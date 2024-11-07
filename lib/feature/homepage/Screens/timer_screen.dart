import 'package:flutter/material.dart';
import 'package:projekt_timer_app/feature/homepage/widgets/stopwatch_function_button.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({
    super.key,
  });

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 65, 107),
        title: const Text(
          "Timer",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "15 s",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 96,
              color: Color.fromARGB(255, 14, 65, 107),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 156, right: 156, bottom: 24),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 14, 65, 107),
                  ),
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StopwatchFunctionButton(
                buttonName: 'Start',
              ),
              StopwatchFunctionButton(
                buttonName: 'Stop',
              ),
            ],
          )
        ],
      ),
    );
  }
}
