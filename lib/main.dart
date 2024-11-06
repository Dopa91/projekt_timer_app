import 'package:flutter/material.dart';
import 'package:projekt_timer_app/bottom_navigation_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 14, 65, 107),
          title: const Text(
            "Stopwatch",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        body: const BottomNavigationBarScreen(),
      ),
    );
  }
}
