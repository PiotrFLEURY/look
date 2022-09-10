import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:look/look.dart';
import 'package:source_gen/source_gen.dart';

/// Generator for the [LookGolden] annotation
/// It generates a golden tests for the Widget to look
/// Several variants can be generates depending on :
///   * the themes
///   * the dimensions provided
class GoldenGenerator extends GeneratorForAnnotation<LookGolden> {
  /// Generates the golden tests
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final String className =
        annotation.peek('type')!.typeValue.element2!.displayName;
    final String? builder = annotation.peek('builder')?.stringValue;
    final String? goldenName = annotation.peek('name')?.stringValue;
    final String? lightTheme = annotation
        .read('lightTheme')
        .objectValue
        .toFunctionValue()
        ?.displayName;
    final String? darkTheme =
        annotation.read('darkTheme').objectValue.toFunctionValue()?.displayName;
    final List<String> dimensions = annotation
            .peek('dimensions')
            ?.listValue
            .map((e) => e.toStringValue()!)
            .toList() ??
        ['390x844'];

    final String referenceFile = buildStep.inputId.uri.pathSegments.last;

    final emitter = DartEmitter(
      orderDirectives: true,
    );
    final library = Library(
      (l) => l
        ..directives.addAll([
          Directive.partOf(referenceFile),
        ])
        ..body.add(
          mainMethod(
            className,
            builder,
            goldenName ?? '${className}_golden.png',
            lightTheme,
            darkTheme,
            dimensions,
          ),
        ),
    );
    return DartFormatter().format('${library.accept(emitter)}');
  }

  /// Generates a main method that runs the Golden tests.
  Method mainMethod(
    String widgetName,
    String? builder,
    String goldenName,
    String? lightTheme,
    String? darkTheme,
    List<String> dimensions,
  ) {
    return Method(
      (m) => m
        ..name = 'lookGoldens'
        ..body = groupMethod(
          widgetName: widgetName,
          builder: builder,
          goldenName: goldenName,
          lightTheme: lightTheme,
          darkTheme: darkTheme,
          dimensions: dimensions,
        ).code,
    );
  }

  /// Generates a group method that runs the Golden tests.
  Expression groupMethod({
    required String widgetName,
    required String? builder,
    required String goldenName,
    required String? lightTheme,
    required String? darkTheme,
    required List<String> dimensions,
  }) {
    return refer('group').newInstance([
      literalString('$widgetName golden tests'),
      Method(
        (m) => m
          ..body = Block.of(
            [
              ...dimensions.map(
                (dimension) {
                  return testWidgetMethod(
                    widgetName: widgetName,
                    builder: builder,
                    goldenName: goldenName,
                    theme: lightTheme,
                    darkTheme: false,
                    dimension: dimension,
                  ).statement;
                },
              ),
              if (darkTheme != null)
                ...dimensions.map(
                  (dimension) {
                    return testWidgetMethod(
                      widgetName: widgetName,
                      builder: builder,
                      goldenName: goldenName,
                      theme: darkTheme,
                      darkTheme: true,
                      dimension: dimension,
                    ).statement;
                  },
                ),
            ],
          ),
      ).closure,
    ]);
  }

  /// Generates a test method that runs a single Golden test.
  Expression testWidgetMethod({
    required String widgetName,
    required String? builder,
    required String goldenName,
    required String? theme,
    required bool darkTheme,
    required String dimension,
  }) {
    return refer('testWidgets').newInstance([
      refer(
        '\'$dimension $widgetName ${darkTheme ? 'dark theme' : 'light theme'}\'',
      ),
      anonymousMethod(
        widgetName: widgetName,
        builder: builder,
        goldenName: goldenName,
        theme: theme,
        darkTheme: darkTheme,
        dimension: dimension,
      ).closure,
    ]);
  }

  /// Generates an anonymous method containing the Golden test body.
  Method anonymousMethod({
    required String widgetName,
    required String? builder,
    required String goldenName,
    required String? theme,
    required bool darkTheme,
    required String dimension,
  }) {
    final width = dimension.split('x')[0];
    final height = dimension.split('x')[1];
    return Method(
      (m) => m
        ..modifier = MethodModifier.async
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'tester'
              ..type = refer('WidgetTester'),
          ),
        )
        ..body = Block.of([
          // tester.binding.window.physicalSizeTestValue = const Size(390, 844);
          refer('tester')
              .property('binding')
              .property('window')
              .property(
                'physicalSizeTestValue',
              )
              .assign(
                refer('Size').constInstance([
                  literalNum(double.parse(width)),
                  literalNum(double.parse(height)),
                ]),
              )
              .statement,

          /// Pump widget to test
          refer('tester')
              .property('pumpWidget')
              .call([
                refer('MaterialApp').newInstance([], {
                  'theme': theme != null
                      ? refer(theme).call([])
                      : refer('ThemeData').newInstance([]),
                  'home': builder == null
                      ? refer(widgetName).newInstance([])
                      : refer(builder).call([]),
                }),
              ])
              .awaited
              .statement,

          /// Exoectation
          refer('expectLater')
              .call([
                // find.byType(MyWidget)
                refer('find').property('byType').call([
                  refer(widgetName),
                ]),
                // matchesGoldenFile('golden.png')
                refer('matchesGoldenFile').call([
                  literalString(
                    finalGoldenName(
                      goldenName,
                      darkTheme,
                      dimension,
                    ),
                  ),
                ]),
              ])
              .awaited
              .statement,
        ]),
    );
  }

  /// Generates the golden picture file name depending on the variant
  String finalGoldenName(
    String givenGoldenName,
    bool darkTheme,
    String dimension,
  ) {
    final name = givenGoldenName.split('.png')[0];
    final ext = givenGoldenName.split('.png')[1];
    return '${name}_${dimension}_${darkTheme ? '_dark' : ''}.${ext.isEmpty ? 'png' : ext}';
  }
}
