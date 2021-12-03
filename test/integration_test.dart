import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:generate_random_color/main.dart' as app;


void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("test work", (WidgetTester tester) async {

    app.main();
    await tester.pumpAndSettle();
    final button = find.byType(Container);

    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();

    await tester.longPress(button);
    await tester.pumpAndSettle();


  });
}
