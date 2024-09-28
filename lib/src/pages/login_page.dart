import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storage_app/src/routers/page.dart' as router;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'ID',
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'パスワード',
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () => context.go(router.Page.topPage.path),
            child: const Text('ログイン'),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: const Text('パスワードを忘れた場合はこちら')
        ),
      ]),
    );
  }
}
