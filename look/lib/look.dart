library look;

import 'package:meta/meta_meta.dart';

/// Use this constant when no parameter is needed
const Look look = Look();

/// Annotation used to generate a runnable Flutter app containning only the Widget to look
@Target({TargetKind.classType})
class Look {
  /// Method reference to the Widget builder function
  final Function? builder;
  final Function? theme;
  const Look({
    this.builder,
    this.theme,
  });
}

/// Annotation used to generate a golden test for the Widget to look
@Target({TargetKind.function})
class LookGolden {
  /// Name of the golden file
  final String? name;

  /// DartType of the Widget to look
  final Type? type;

  /// Method reference to the Widget builder function
  final Function? builder;

  /// Method reference to the light theme builder function
  final Function? lightTheme;

  /// Method reference to the dark theme builder function
  final Function? darkTheme;

  /// List of every dimension permutations to test (format: widthxheight)
  final List<String> dimensions;

  /// Annotation constructor
  const LookGolden({
    required this.type,
    this.name,
    this.builder,
    this.lightTheme,
    this.darkTheme,
    this.dimensions = const [],
  });
}
