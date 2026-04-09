class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        actions: [
          IconButton(
            key: Key('logoutButton'),
            onPressed: () {
              context.read<AuthBloc>().add(LogoutEvent());
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          Text("Users"),
          ElevatedButton(
            key: Key('addButton'),
            onPressed: () {},
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
