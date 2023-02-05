# Look

Look is a Flutter package for Widget preview.

It gives the possibility to start only the widget to preview and not the whole application.

# Purpose

Imagine you are working on a Flutter application and you want to work and edit only a specific Widget, page, or whatever.

Most of the concrete applications have many pages, many widgets, and many other things.

Most of them have also athentication, state management, routing, etc.

Look package's purpose is to give you the possibility to preview only the widget you want to preview without having to start the whole app, maybe having to generate some data, beeing connected to an API or a server, etc.

# Features

Just add the `@look` annotation to the widget you want to preview.

```dart
// my_widget.dart

@look
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

Generate sources using `build_runner` using the fancy command line that everyone know now:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

A brand new file has been generated beside the original one. Search for the file `*.look.dart`.

Run it, and voilà !

# Previewing a widget

1. add the `@look` annotation to the widget you want to preview
2. run `flutter pub run build_runner build --delete-conflicting-outputs`
3. run the generated file
4. enjoy, you are now free to edit the widget you want to preview without having to start the whole app

# Widget parameters

Use a builder method to pass parameters to your widget.

Use a theme builder method to pass a theme to your widget (Optional).

```dart
@Look(
  builder: myBuilderMethod,
  theme: myThemeBuilderMethod, // optional
)
class MyWidget extends StatelessWidget {
  final String text;
  final MyData data;
  final MyController controller;
  final AnyOtherWidget child;

  MyWidget({
    required this.text,
    required this.data,
    required this.controller,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

myBuilderMethod() => MyWidget(
  text: 'Hello World',
  data: MyData(),
  controller: MyController(),
  child: AnyOtherWidget(),
  // ...
);
```

## Golden tests with look

Look is also a golden tests factory.

First, create a new dart file in the `test` folder.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:example/pages/home.dart';
import 'package:look/look.dart';

part 'home_page_test.lookgolden.dart';

@LookGolden(type: MyHomePage)
main() => lookGoldens();
```

Then, generate test sources using the following command:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Look will generate golden tests for you.

```dart
// home_page_test.lookgolden.dart
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'home_page_test.dart';

lookGoldens() => group('MyHomePage golden tests', () {
      testWidgets('1080x2340 MyHomePage light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue =
            const Size(1080.0, 2340.0);
        await tester.pumpWidget(
            MaterialApp(theme: ThemeData(), home: const MyHomePage()));
        await expectLater(find.byType(MyHomePage),
            matchesGoldenFile('goldens/MyHomePage_golden_1080x2340_.png'));
      });
    });
```

### Available options for @LookGolden

| Option | Type | Description |
| --- | --- | --- |
| type | DartType | The type of the widget to test |
| builder | Function | Method reference of the builder function |
| lightTheme | String | Method reference of the light theme builder function |
| darkTheme | String | Method reference of the dark theme builder function |
| name | String | The name of the golden file |
| dimensions | List<String> | The dimension list of the golden to test (format: 'width:height'; example: '800x600') | 

**Example with options**

```dart
// test/golden_shape_test.dart
import 'package:example/pages/widgets/shape.dart';
import 'package:example/theme.dart';
import 'package:look/look.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'golden_shape_test.lookgolden.dart';

@LookGolden(
  type: DynamicShape,
  builder: dynamicShapeBuilder,
  lightTheme: lightTheme,
  darkTheme: darkTheme,
  name: 'goldens/DynamicShape_golden.png',
  dimensions: ['400x600', '800x600', '800x1200', '1600x1200'],
)
main() => lookGoldens();
```

**Complex example result**

```dart
// golden_shape_test.lookgolden.dart
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'golden_shape_test.dart';

lookGoldens() => group('DynamicShape golden tests', () {
      testWidgets('400x600 DynamicShape light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(400.0, 600.0);
        await tester.pumpWidget(
            MaterialApp(theme: lightTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_400x600_.png'));
      });
      testWidgets('800x600 DynamicShape light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(800.0, 600.0);
        await tester.pumpWidget(
            MaterialApp(theme: lightTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_800x600_.png'));
      });
      testWidgets('800x1200 DynamicShape light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(800.0, 1200.0);
        await tester.pumpWidget(
            MaterialApp(theme: lightTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_800x1200_.png'));
      });
      testWidgets('1600x1200 DynamicShape light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue =
            const Size(1600.0, 1200.0);
        await tester.pumpWidget(
            MaterialApp(theme: lightTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_1600x1200_.png'));
      });
      testWidgets('400x600 DynamicShape dark theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(400.0, 600.0);
        await tester.pumpWidget(
            MaterialApp(theme: darkTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_400x600__dark.png'));
      });
      testWidgets('800x600 DynamicShape dark theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(800.0, 600.0);
        await tester.pumpWidget(
            MaterialApp(theme: darkTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_800x600__dark.png'));
      });
      testWidgets('800x1200 DynamicShape dark theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(800.0, 1200.0);
        await tester.pumpWidget(
            MaterialApp(theme: darkTheme(), home: dynamicShapeBuilder()));
        await expectLater(
            find.byType(DynamicShape),
            matchesGoldenFile(
                'goldens/DynamicShape_golden_800x1200__dark.png'));
      });
      testWidgets('1600x1200 DynamicShape dark theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue =
            const Size(1600.0, 1200.0);
        await tester.pumpWidget(
            MaterialApp(theme: darkTheme(), home: dynamicShapeBuilder()));
        await expectLater(
            find.byType(DynamicShape),
            matchesGoldenFile(
                'goldens/DynamicShape_golden_1600x1200__dark.png'));
      });
    });
```

## Created using `dart-lang/build`

For more information on the `build` package, see the [build](https://pub.dev/packages/build) package on pub on visit [build Github repository](https://github.com/dart-lang/build)