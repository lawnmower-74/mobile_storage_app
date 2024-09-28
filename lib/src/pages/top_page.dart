import 'package:flutter/material.dart';
import 'package:storage_app/src/widgets/bottom_nav_bar.dart';
import 'package:storage_app/src/pages/profile_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const _Body(),
    const Center(child: Text('Notifications Page')),
    const Center(child: Text('Add Page')),
    const Center(child: Text('Chat Page')),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      extendBody: true,
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onItemSelected: _onItemTapped,
      ),
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