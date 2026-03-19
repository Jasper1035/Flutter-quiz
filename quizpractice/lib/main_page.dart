import 'package:flutter/material.dart';
import 'package:quizpractice/quiz.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(39, 0, 0, 0),
      appBar: AppBar(title: Text('Flutter Quiz')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(110, 255, 193, 7),
            ),
            SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz()),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(width: 2, color: Colors.white),
              ),
              label: Text('Start Quiz'),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
