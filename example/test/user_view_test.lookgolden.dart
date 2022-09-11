// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'user_view_test.dart';

lookGoldens() => group('UserView golden tests', () {
      testWidgets('1080x2340 UserView light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue =
            const Size(1080.0, 2340.0);
        await tester.pumpWidget(
            MaterialApp(theme: ThemeData(), home: userViewBuilder()));
        await expectLater(find.byType(UserView),
            matchesGoldenFile('goldens/user_view_1080x2340_.png'));
      });
    });
