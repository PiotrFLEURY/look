# Look

Look is a Flutter package for Widget preview.

It gives the possibility to start only the widget to preview and not the whole application.

# Purpose

Imagine you are working on a Flutter application and you want to work and edit only a specific Widget, page, or whatever.

Most of the concrete applications have many pages, many widgets, and many other things like athentication, state management, routing, API, etc.

Let's suppose that you want to work on a deep page in the app. You have to start the whole app, maybe having to generate some data, beeing connected to an API or a server, etc. 

But:
* You just want to work on a specific widget
* You don't really need to start the whole app, maybe generate data or be connected to an API or a server with authentication
* You don't really need to waiste time on all of these things

You main goal is only to work on this deep page.

Look was made for you !

Look package gives you the possibility to run only the widget you want to preview with no pre-requisites.

## Getting started

Add look, look_generator and build_runner to your app dependencies:

```bash
flutter pub add look
flutter pub add --dev look_generator build_runner
```

# Features

## Previewing a widget

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

### Passing parameters

Use a builder method to pass parameters to your widget.

```dart
@Look('myBuilderMethod')
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
// test/golden_test.dart
import 'package:my_widget.dart';
import 'package:my_theme.dart';
import 'package:look/look.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

part 'golden_test.lookgolden.dart';

@LookGolden(
  type: MyWidget,
  builder: myWidgetMethodBuilder,
  lightTheme: myLightThemeMethod,
  darkTheme: myDarkThemeMethod,
  name: 'goldens/MyWidget_golden.png',
  dimensions: ['400x600', '800x600', '800x1200', '1600x1200'],
)
void main() => lookGoldens();
```

Then, generate test sources using the following command:

```bash
flutter pub run build_runner test --delete-conflicting-outputs
```

Look will generate golden tests for each provided theme.

### Available options for @LookGolden

| Option | Type | Description |
| --- | --- | --- |
| type | DartType | The type of the widget to test |
| builder | Function | Method reference of the builder function |
| lightTheme | String | Method reference of the light theme builder function |
| darkTheme | String | Method reference of the dark theme builder function |
| name | String | The name of the golden file |
| dimensions | List<String> | The dimension list of the golden to test (format: 'width:height'; example: '800x600') | 