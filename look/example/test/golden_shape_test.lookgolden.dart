// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// GoldenGenerator
// **************************************************************************

part of 'golden_shape_test.dart';

lookGoldens() => group('DynamicShape golden tests', () {
      testWidgets('DynamicShape light theme', (WidgetTester tester) async {
        await tester.pumpWidget(
            MaterialApp(theme: lightTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_light.png'));
      });
      testWidgets('DynamicShape dark theme', (WidgetTester tester) async {
        await tester.pumpWidget(
            MaterialApp(theme: darkTheme(), home: dynamicShapeBuilder()));
        await expectLater(find.byType(DynamicShape),
            matchesGoldenFile('goldens/DynamicShape_golden_dark.png'));
      });
    });
