// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'user_view_test.dart';

lookGoldens() => group('UserView golden tests', () {
      testWidgets('800x600 UserView light theme', (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue = const Size(800.0, 600.0);
        await tester.pumpWidget(
            MaterialApp(theme: ThemeData(), home: userViewBuilder()));
        await expectLater(find.byType(UserView),
            matchesGoldenFile('goldens/user_view_800x600_.png'));
      });
    });
