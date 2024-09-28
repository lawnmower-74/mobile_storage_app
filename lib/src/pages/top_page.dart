import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:storage_app/src/routers/page.dart' as router;

class TopPage extends StatelessWidget {
  const TopPage({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CardButton(
            text: 'オーダー',
            onPressed: () => {},
          ),
          const SizedBox(height: 4),
          CardButton(
            text: '設定', 
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  const CardButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: double.infinity,
        height: 128,
        child: Card(
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
