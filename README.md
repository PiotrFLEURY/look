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