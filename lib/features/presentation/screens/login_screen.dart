class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(key: Key('email'), controller: emailController),
          TextField(key: Key('password'), controller: passwordController),
          ElevatedButton(
            key: Key('loginButton'),
            onPressed: () {
              context.read<AuthBloc>().add(
                    LoginEvent(
                      emailController.text,
                      passwordController.text,
                    ),
                  );
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
