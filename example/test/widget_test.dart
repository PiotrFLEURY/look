import 'package:example/domain/entities/user_example.dart';
import 'package:example/presentation/users/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Counter increments smoke test', () {
    expect(true, true);
  });

  testWidgets('dummy golden test', (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = const Size(390, 844);
    await tester.pumpWidget(MediaQuery(
      data: const MediaQueryData(),
      child: RepaintBoundary(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Material(
            child: UserTile(
              user: userExample.copyWith(thumbnailPicture: ''),
              onTap: () {},
            ),
          ),
        ),
      ),
    ));
    await expectLater(
        find.byType(UserTile), matchesGoldenFile('user_tile.png'));
  });
}
