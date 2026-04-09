void main() {
  testWidgets('full flow', (tester) async {
    await tester.pumpWidget(MyApp(testMode: true));

    await tester.enterText(find.byKey(Key('email')), 'test');
    await tester.enterText(find.byKey(Key('password')), '123');

    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pumpAndSettle();

    expect(find.text('Users'), findsOneWidget);

    await tester.tap(find.byKey(Key('addButton')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('logoutButton')));
    await tester.pumpAndSettle();

    expect(find.byKey(Key('loginButton')), findsOneWidget);
  });
}
