library look;

import 'package:meta/meta_meta.dart';

/// Use this constant when no parameter is needed
const Look look = Look();

/// Annotation used to generate a runnable Flutter app containning only the Widget to look
@Target({TargetKind.classType})
class Look {
  final String? builder;
  const Look([
    this.builder,
  ]);
}

/// Annotation used to generate a golden test for the Widget to look
@Target({TargetKind.function})
class LookGolden {
  final String? name;
  final Type? type;
  final String? builder;
  final Function? lightTheme;
  final Function? darkTheme;
  final List<String> dimensions;
  const LookGolden({
    required this.type,
    this.name,
    this.builder,
    this.lightTheme,
    this.darkTheme,
    this.dimensions = const [],
  });
}
