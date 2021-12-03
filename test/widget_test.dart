import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:generate_random_color/home_page.dart';

void main() {

  testWidgets('HomePage test', (WidgetTester tester) async {

    await tester.pumpWidget(MyHomePage());
    await tester.tap(find.byType(InkWell));
    await tester.longPress(find.byType(InkWell));

    expect((tester.widget(find.byType(Container)) as Container).color, Color(0xFFFFFFFF));
    expect(find.byType(InkWell), findsOneWidget);
    expect(find.text('Hey there'), findsOneWidget);
  });
}
