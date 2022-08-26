This is the generator for the look package.

## Features

This package will generate runnable dart files to preview any widget decorated with the `@look` annotation.

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
