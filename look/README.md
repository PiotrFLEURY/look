# Look

Look is a Flutter package for Widget preview.

It gives the possibility to start only the widget to preview and not the whole application.

## Features

Imagine you are working on a Flutter application and you want to work and edit only a specific Widget, page, or whatever.

Most of the concrete applications have many pages, many widgets, and many other things like athentication, state management, routing, API, etc.

Let's suppose that you want to work on a deep page in the app. You have to start the whole app, maybe having to generate some data, beeing connected to an API or a server, etc. 

But:
* You just want to work on a specific widget
* You don't really need to start the whole app
* You don't really need to generate data
* You don't really need to be connected to an API or a server
* You don't really need to be authenticated
* You don't really need to waiste time on all of these things

You main goal is only to work on this deep page.

Look was made for you !

Look package gives you the possibility to run only the widget you want to preview with no pre-requisites.

## Getting started

Add the look package and look_generator to your app dependencies:

```bash
flutter pub add look
flutter pub add --dev look_generator
```

## Usage

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

## Additional information

### Passing parameters

Use a builder method to pass parameters to your widget.

```dart
@Look(builder: 'myBuilderMethod')
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
