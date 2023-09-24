// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'golden_shape_test.dart';

lookGoldens() => group(
      'DynamicShape golden tests',
      () {
        testWidgets(
          '400x600 DynamicShape light theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              400.0,
              600.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: lightTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile('goldens/DynamicShape_golden_400x600_.png'),
            );
          },
        );
        testWidgets(
          '800x600 DynamicShape light theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              800.0,
              600.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: lightTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile('goldens/DynamicShape_golden_800x600_.png'),
            );
          },
        );
        testWidgets(
          '800x1200 DynamicShape light theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              800.0,
              1200.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: lightTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile('goldens/DynamicShape_golden_800x1200_.png'),
            );
          },
        );
        testWidgets(
          '1600x1200 DynamicShape light theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              1600.0,
              1200.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: lightTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile('goldens/DynamicShape_golden_1600x1200_.png'),
            );
          },
        );
        testWidgets(
          '400x600 DynamicShape dark theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              400.0,
              600.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: darkTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile(
                  'goldens/DynamicShape_golden_400x600__dark.png'),
            );
          },
        );
        testWidgets(
          '800x600 DynamicShape dark theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              800.0,
              600.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: darkTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile(
                  'goldens/DynamicShape_golden_800x600__dark.png'),
            );
          },
        );
        testWidgets(
          '800x1200 DynamicShape dark theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              800.0,
              1200.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: darkTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile(
                  'goldens/DynamicShape_golden_800x1200__dark.png'),
            );
          },
        );
        testWidgets(
          '1600x1200 DynamicShape dark theme',
          (WidgetTester tester) async {
            tester.view.physicalSize = const Size(
              1600.0,
              1200.0,
            );
            await tester.pumpWidget(MaterialApp(
              theme: darkTheme(),
              home: dynamicShapeBuilder(),
            ));
            await expectLater(
              find.byType(DynamicShape),
              matchesGoldenFile(
                  'goldens/DynamicShape_golden_1600x1200__dark.png'),
            );
          },
        );
      },
    );
