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
    String className = annotation.peek('type')!.typeValue.element2!.displayName;
    String? builder = annotation.peek('builder')?.stringValue;
    String? goldenName = annotation.peek('name')?.stringValue;
    String? lightTheme = annotation
        .read('lightTheme')
        .objectValue
        .toFunctionValue()
        ?.displayName;
    String? darkTheme =
        annotation.read('darkTheme').objectValue.toFunctionValue()?.displayName;
    String referenceFile = buildStep.inputId.uri.pathSegments.last;

    //...
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
  }) {
    return refer('group').newInstance([
      literalString('$widgetName golden tests'),
      Method(
        (m) => m
          ..body = Block.of([
            testWidgetMethod(
              widgetName: widgetName,
              builder: builder,
              goldenName: goldenName,
              theme: lightTheme,
              darkTheme: false,
            ).statement,
            if (darkTheme != null)
              testWidgetMethod(
                widgetName: widgetName,
                builder: builder,
                goldenName: goldenName,
                theme: darkTheme,
                darkTheme: true,
              ).statement,
          ]),
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
  }) {
    return refer('testWidgets').newInstance([
      refer('\'$widgetName ${darkTheme ? 'dark theme' : 'light theme'}\''),
      anonymousMethod(
        widgetName: widgetName,
        builder: builder,
        goldenName: goldenName,
        theme: theme,
        darkTheme: darkTheme,
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
  }) {
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
          /// Pump widget to test
          refer('tester')
              .property('pumpWidget')
              .call([
                refer('MaterialApp').newInstance([], {
                  'theme': refer(theme ?? 'ThemeData').call([]),
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
                  literalString(finalGoldenName(goldenName, darkTheme)),
                ]),
              ])
              .awaited
              .statement,
        ]),
    );
  }

  /// Generates the golden picture file name depending on the variant
  String finalGoldenName(String givenGoldenName, bool darkTheme) {
    if (givenGoldenName.endsWith('.png')) {
      return givenGoldenName.split('.png').first +
          (darkTheme ? '_dark.png' : '_light.png');
    }
    return givenGoldenName + (darkTheme ? '_dark.png' : '_light.png');
  }
}
