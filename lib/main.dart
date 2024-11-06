import 'package:flutter/material.dart';
import 'package:projekt_timer_app/feature/bottom_nav_bar/bottom_navigation_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarScreen(),
    );
  }
}
