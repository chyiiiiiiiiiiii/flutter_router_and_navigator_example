import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_example/go_router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              const TextTheme(titleLarge: TextStyle(color: Colors.blue))),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => GoRouter.of(context).push('/profile'),
              child: Text(
                'Push to Profile',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).push('/post'),
              child: Text(
                'Push to Post',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => GoRouter.of(context).push('/profile-edit'),
              child: Text(
                'Push to Edit page',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/profile-edit'),
              child: Text(
                'Go to Edit page',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Edit'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => GoRouter.of(context).pop(),
          child: Text(
            'Back to last page',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

class PostScreen extends StatelessWidget {
  const PostScreen({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => GoRouter.of(context).go('/menu'),
          child: Text(
            'Go to Menu',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => GoRouter.of(context).go('/'),
          child: Text(
            'Go Home',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
