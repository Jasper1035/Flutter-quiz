import 'package:flutter/material.dart';
import 'package:quizpractice/data/questions.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    // logic to calculate score: compare user answer to index 0 of the original list
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = chosenAnswers.asMap().entries.where((entry) {
      return entry.value == questions[entry.key].answer[0];
    }).length;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 0, 0),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'You got $numCorrectQuestions out of $numTotalQuestions correct!',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // This takes them back to the very first screen (main_page.dart)
                  Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil('/', (route) => false);
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.black),
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
