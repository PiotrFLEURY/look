// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'home_page_test.dart';

lookGoldens() => group('MyHomePage golden tests', () {
      testWidgets('1080x2340 MyHomePage light theme',
          (WidgetTester tester) async {
        tester.binding.window.physicalSizeTestValue =
            const Size(1080.0, 2340.0);
        await tester.pumpWidget(
            MaterialApp(theme: ThemeData(), home: const MyHomePage()));
        await expectLater(find.byType(MyHomePage),
            matchesGoldenFile('goldens/MyHomePage_golden_1080x2340_.png'));
      });
    });
