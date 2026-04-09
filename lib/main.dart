void main() {
  setupDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final bool testMode;

  const MyApp({this.testMode = false});

  @override
  Widget build(BuildContext context) {
    if (testMode) {
      setupDependencies(isTest: true);
    }

    return MaterialApp(
      home: BlocProvider(
        create: (_) => AuthBloc(getIt()),
        child: LoginScreen(),
      ),
    );
  }
}
