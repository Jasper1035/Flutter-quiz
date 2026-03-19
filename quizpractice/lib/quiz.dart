import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizpractice/data/questions.dart';
import 'package:quizpractice/result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var currentQuestionIndex = 0;

  void answerQuestion(String pickedAnswer) {
    selectedAnswer.add(pickedAnswer);
    setState(() {
      if (selectedAnswer.length < questions.length) {
        currentQuestionIndex++;
      } else {
        // currentQuestionIndex = 0;
        // Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Result()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ...currentQuestion.answer.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: ElevatedButton(
                    onPressed: () {
                      answerQuestion(item);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Text(item, textAlign: TextAlign.center),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
