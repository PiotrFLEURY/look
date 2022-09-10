// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'user_tile_test.dart';

lookGoldens() => group('UserTile golden tests', () {
      testWidgets('390x844 UserTile light theme', (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(390.0, 844.0);
        await tester.pumpWidget(
            MaterialApp(theme: ThemeData(), home: userTilePreview()));
        await expectLater(find.byType(UserTile),
            matchesGoldenFile('UserTile_golden_390x844_.png'));
      });
    });
