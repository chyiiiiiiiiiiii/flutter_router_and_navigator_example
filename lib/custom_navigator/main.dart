import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const isAuthenticated = true;

    return const MaterialApp(
      home: Navigator(
        pages: [
          if (isAuthenticated) MaterialPage(child: ProfileScreen()),
          MaterialPage(child: SettingScreen()),
          MaterialPage(child: VersionScreen()),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const VersionScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = 0.0;
                const end = 1.0;
                const curve = Curves.easeInOut;

                final tweenAnimation = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve))
                    .animate(animation);

                return AnimatedBuilder(
                  animation: tweenAnimation,
                  builder: (context, child) {
                    final rotateY = tweenAnimation.value * 3.14; // 翻轉角度

                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()..rotateY(rotateY),
                      child: child,
                    );
                  },
                  child: child,
                );
              },
            ),
          );
        },
        child: const Text('Go to Settings'),
      ),
    ));
  }
}

class VersionScreen extends StatelessWidget {
  const VersionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Pop'),
        ),
      ),
    );
  }
}
