import 'package:flutter/material.dart';
import 'package:projekt_timer_app/feature/homepage/Screens/stopwatch_screen.dart';
import 'package:projekt_timer_app/feature/homepage/Screens/timer_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({
    super.key,
  });

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarMainState();
}

class _BottomNavigationBarMainState extends State<BottomNavigationBarScreen> {
  late List<Widget> widgets;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    widgets = [
      const StopwatchScreen(),
      const TimerScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // indicatorShape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(8),
        //   ),
        // ),
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          currentIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.timer),
            label: "Stopwatch",
          ),
          NavigationDestination(
            icon: Icon(Icons.watch_later),
            label: "Timer",
          ),
        ],
      ),
      body: widgets[currentIndex],
    );
  }
}
