import 'package:flutter/material.dart';
import 'package:quizpractice/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentQuestion.text, style: TextStyle(color: Colors.red)),
              SizedBox(height: 10),
              ...currentQuestion.answer.map((answer) {
                return ElevatedButton(onPressed: () {}, child: Text(answer));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
