// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'user_tile_test.dart';

lookGoldens() => group(
      'UserTile golden tests',
      () {
        testWidgets(
          '1080x2340 UserTile light theme',
          (WidgetTester tester) async {
            tester.binding.window.physicalSizeTestValue = const Size(
              1080.0,
              2340.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: ThemeData(),
              home: userTilePreview(),
            ));
            await expectLater(
              find.byType(UserTile),
              matchesGoldenFile('goldens/UserTile_golden_1080x2340_.png'),
            );
          },
        );
      },
    );
