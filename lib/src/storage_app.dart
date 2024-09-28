import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storage_app/src/routers/page.dart' as router;
import 'package:storage_app/src/pages/login_page.dart';

final _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    redirect: (BuildContext context, GoRouterState state) {
      return router.Page.loginPage.path;
    },
  ),
  GoRoute(
    path: router.Page.loginPage.path,
    builder: (context, state) => const LoginPage(),
  ),
]);

class StorageApp extends StatelessWidget {
  const StorageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'storage app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
