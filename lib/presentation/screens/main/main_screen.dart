import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.navigationShell.currentIndex,
        onTap: _onTapToPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'account',
          ),
        ],
      ),
    );
  }

  void _onTapToPage(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
