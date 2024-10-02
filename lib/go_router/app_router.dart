import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_example/go_router/main.dart';
import 'package:navigator_example/go_router/router_refresh_stream.dart';

final routes = <GoRoute>[
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) {
      return const HomeScreen();
    },
    routes: [
      GoRoute(
        path: 'profile',
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: 'profile-edit',
        name: 'profile-edit',
        builder: (context, state) => const ProfileEditScreen(),
      ),
    ],
  ),
  GoRoute(
    path: '/post',
    name: 'post',
    builder: (context, state) {
      final id = state.extra as int? ?? 0;

      return PostScreen(id: id);
    },
  ),
  GoRoute(
    path: '/menu',
    name: 'menu',
    pageBuilder: (context, state) {
      return const MaterialPage(
        fullscreenDialog: true,
        child: MenuScreen(),
      );
    },
  ),
];

final appRouter = GoRouter(
  initialLocation: '/',
  routes: routes,
  redirect: (context, state) {
    debugPrint('redirect: ${state.uri}');
    return null;
  },
  refreshListenable: RouterRefreshNotifier(isAuthenticatedStream),
);

final isAuthenticatedStream = Stream.fromFutures([
  for (int i = 0; i < 100; i++)
    Future.delayed(Duration(seconds: i), () => Random().nextBool())
]);
