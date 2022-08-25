import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';
import 'look_generator.dart';

Builder lookBuilder(BuilderOptions options) =>
    LibraryBuilder(LookGenerator(), generatedExtension: '.look.dart');
