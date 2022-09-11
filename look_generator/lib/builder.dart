import 'package:look_generator/golden_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';
import 'look_generator.dart';

/// Builder used to generate a runnable Flutter app containning only the Widget to look
Builder lookBuilder(BuilderOptions options) {
  return LibraryBuilder(LookGenerator(), generatedExtension: '.look.dart');
}

/// Builder used to generate a golden test for the Widget to look
Builder goldenBuilder(BuilderOptions options) =>
    LibraryBuilder(GoldenGenerator(), generatedExtension: '.lookgolden.dart');
