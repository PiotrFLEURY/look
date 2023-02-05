// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'app_test.dart';

lookGoldens() => group(
      'MyApp golden tests',
      () {
        testWidgets(
          '1080x2340 MyApp light theme',
          (WidgetTester tester) async {
            tester.binding.window.physicalSizeTestValue = const Size(
              1080.0,
              2340.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: ThemeData(),
              home: const MyApp(),
            ));
            await expectLater(
              find.byType(MyApp),
              matchesGoldenFile('goldens/MyApp_golden_1080x2340_.png'),
            );
          },
        );
      },
    );
