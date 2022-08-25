library look_generator;

//import 'package:analyzer/dart/constant/value.dart';
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
    Map<String, dynamic> arguments = peekArguments(annotation);

    final appClassName = 'Look${className}App';

    final classBuilder = Class((c) {
      c
        ..name = appClassName
        ..extend = refer('StatelessWidget', 'package:flutter/material.dart')
        ..constructors.add(constructor())
        ..methods.add(buildMethod(className, arguments));
    });

    //...
    final emitter = DartEmitter(
      orderDirectives: true,
    );
    final library = Library((l) => l
      ..directives.addAll([
        Directive.import('package:flutter/material.dart'),
        Directive.import(uri),
      ])
      ..body.addAll([
        mainMethod(appClassName),
        classBuilder,
      ]));
    return DartFormatter().format('${library.accept(emitter)}');
  }

  /// Parses the [Look] annotation arguments to be passed to the Widget to look
  Map<String, dynamic> peekArguments(ConstantReader annotation) {
    return annotation.peek('arguments')?.mapValue.map((key, value) {
          if (value?.type?.getDisplayString(withNullability: false) ==
              'String') {
            return MapEntry(
              key?.toStringValue() ?? 'unable to parse $key',
              value?.toStringValue(),
            );
          }
          return MapEntry(
            key?.toStringValue() ?? 'unable to parse $key',
            '\'Unknown type ${value?.type}\'',
          );
        }) ??
        {};
  }

  /// Generates the constructor for the class.
  Constructor constructor() {
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
  Method buildMethod(String className, Map<String, dynamic> arguments) {
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
              'theme': refer('ThemeData').newInstance([], {
                'primarySwatch': refer('Colors.blue'),
              }),
              'home': refer(className).constInstance(
                [],
                arguments.map(
                  (key, value) {
                    return MapEntry(
                      key.toString(),
                      refer('\'${value?.toString()}\''),
                    );
                  },
                ),
              ),
            },
          ).code;
      },
    );
  }

  /// Generates a main method that runs the [appClassName] Widget to Look.
  Method mainMethod(String appClassName) {
    return Method(
      (m) => m
        ..name = 'main'
        ..body = refer('runApp').newInstance(
          [
            refer(appClassName).constInstance([]),
          ],
        ).code,
    );
  }
}
