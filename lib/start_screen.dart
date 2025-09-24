import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz ,{super.key});

  final void Function() startQuiz; 

  @override
  Widget build(context) {
    return Center(
      child: Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 300,
            color: Color.fromARGB(255, 255, 0, 0),
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label:const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
