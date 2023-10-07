import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:golden_delicious/golden_delicious.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  setUpAll(() {
    goldenFileComparator = goldenDeliciousComparator;
  });

  await testMain();
}
