import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              DelayedDisplay(
                delay: const Duration(milliseconds: 600),
                slidingBeginOffset: const Offset(1, 0),
                child: Text(
                  'Hello my freind welcome to the your application!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Colors.deepPurple[100],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const DelayedDisplay(
                delay: Duration(milliseconds: 600),
                slidingBeginOffset: Offset(2, 0),
                child: Text(
                  "how are you doing in this from that consumer and for each other",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const DelayedDisplay(
                delay: Duration(milliseconds: 600),
                slidingBeginOffset: Offset(3, 0),
                fadeIn: true,
                child: Text(
                  "This animations created by delayed display package for flutter",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
