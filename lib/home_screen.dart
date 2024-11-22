import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'challanges_screen.dart';
import 'custom_button.dart';
import 'devprocess_screen.dart';
import 'lessons_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 210, 250), // Light Purple

    appBar: AppBar(
        title: const Text(
          'Detailed Project Report',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
        backgroundColor: Colors.blue.shade50,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 25, 70),
        child: Center(
          child: Column(
            children: [
              CustomButton(
                btnText: 'Development Process',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const DevelopmentProcessScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                btnText: 'Challenges Faced',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ChallangeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                btnText: 'Lessons Learned',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LessonScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
