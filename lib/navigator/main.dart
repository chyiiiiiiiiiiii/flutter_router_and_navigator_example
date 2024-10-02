import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/profile') {
          final args = settings.arguments as Map?;

          return MaterialPageRoute(
            builder: (context) {
              return ProfilePage(
                name: args?['name'],
                age: args?['age'],
              );
            },
          );
        }
        return null;
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final message = await Navigator.of(context).pushNamed(
              '/profile',
              arguments: {
                'name': 'Jay Chen',
                'age': 28,
              },
            );

            debugPrint(message.toString());
          },
          child: const Text('Go to Profile'),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.name,
    required this.age,
  });

  final String name;
  final int age;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    final name = args?['name'];
    final age = args?['age'];
    debugPrint('name: $name, age: $age');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pop("Flutter is awesome."),
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
