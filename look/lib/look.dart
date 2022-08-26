library look;

import 'package:meta/meta_meta.dart';

const Look look = Look();

/// Annotation used to generate a runnable Flutter app containning only the Widget to look
@Target({TargetKind.classType})
class Look {
  final String? builder;
  const Look([this.builder]);
}
