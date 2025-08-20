import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_flutter/main.dart';

void main() {
  testWidgets('MainScaffold renders bottom navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeExplorerApp());
    await tester.pumpAndSettle();

    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Discover'), findsOneWidget);
  });

  testWidgets('Navigate to Search tab', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeExplorerApp());
    await tester.pumpAndSettle();

    // Tap on Search destination
    final searchIcon = find.byIcon(Icons.search).first;
    await tester.tap(searchIcon);
    await tester.pumpAndSettle();

    expect(find.text('Search'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}
