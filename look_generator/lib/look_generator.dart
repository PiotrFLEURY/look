import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:look/look.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';

/// Will generate a new Dart Library file containning:
/// * required imports
/// * main function to run only the Widget to look
/// * new StatelessWidget class containing the Widget to look
///   wrapped in a MaterialApp
class LookGenerator extends GeneratorForAnnotation<Look> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    String className = element.displayName;
    String uri = buildStep.inputId.uri.toString();

    final appClassName = 'Look${className}App';

    final builderMethodName =
        annotation.peek('builder')?.objectValue.toFunctionValue()?.displayName;

    final themeMethodName =
        annotation.peek('theme')?.objectValue.toFunctionValue()?.displayName;

    List<LibraryImportElement> imports = element.library?.libraryImports ?? [];

    final classBuilder = Class((c) {
      c
        ..name = appClassName
        ..extend = refer('StatelessWidget', 'package:flutter/material.dart')
        ..constructors.add(_constructor())
        ..methods.add(
          _buildMethod(
            className,
            builderMethodName,
            themeMethodName,
          ),
        );
    });

    final emitter = DartEmitter(
      orderDirectives: true,
    );
    final library = Library((l) => l
      ..directives.addAll([
        Directive.import('package:flutter/material.dart'),
        Directive.import(uri),
        ...imports.map((import) => _toDirective(import)),
      ])
      ..body.addAll([
        _mainMethod(appClassName),
        classBuilder,
      ]));
    return DartFormatter().format('${library.accept(emitter)}');
  }

  /// Converts a LibraryImportElement to a Directive.import
  Directive _toDirective(LibraryImportElement import) {
    return Directive.import(
      import.importedLibrary!.declaration.source!.uri.toString(),
    );
  }

  /// Generates the constructor for the class.
  Constructor _constructor() {
    return Constructor(
      (c) {
        c
          ..constant = true
          ..optionalParameters.add(
            Parameter(
              (p) {
                p
                  ..named = true
                  ..name = 'super.key';
              },
            ),
          );
      },
    );
  }

  /// Generates the build method that returns the [className] Widget
  /// wrapped into a MaterialApp
  Method _buildMethod(
    String className,
    String? builderMethodName,
    String? themeMethodName,
  ) {
    return Method(
      (m) {
        m
          ..name = 'build'
          ..requiredParameters.add(
            Parameter(
              (p) {
                p.name = 'context';
                p.type = refer('BuildContext');
              },
            ),
          )
          ..annotations.add(refer('override'))
          ..returns = refer('Widget')
          ..body = refer('MaterialApp').newInstance(
            [],
            {
              'title': refer('\'Looking $className\''),
              'theme': themeMethodName != null
                  ? refer(themeMethodName).call([])
                  : refer('ThemeData').newInstance([], {
                      'primarySwatch': refer('Colors.blue'),
                    }),
              'home': builderMethodName != null
                  ? refer(builderMethodName).call([])
                  : refer(className).constInstance([]),
            },
          ).code;
      },
    );
  }

  /// Generates a main method that runs the [appClassName] Widget to Look.
  Method _mainMethod(String appClassName) {
    return Method(
      (m) => m
        ..name = 'main'
        ..returns = refer('void')
        ..body = refer('runApp').newInstance(
          [
            refer(appClassName).constInstance([]),
          ],
        ).code,
    );
  }
}
