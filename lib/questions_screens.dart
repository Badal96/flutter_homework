import 'package:flutter/material.dart';
import 'package:first_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int quesionNum = 0;
  List<Map<String, bool>> finalAnswers = [];
  void onAnswerchosed(answer) {
    finalAnswers.add(answer == questions[quesionNum].answers[0]
        ? {answer: true}
        : {answer: false});
    setState(() {
      quesionNum++;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(198, 111, 12, 156),
              Color.fromARGB(197, 46, 8, 63)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[quesionNum].text,
                style: const TextStyle(
                    textBaseline: TextBaseline.ideographic,
                    fontSize: 20,
                    color: Color.fromARGB(150, 255, 255, 255)

                    ),
              ),
              const SizedBox(height: 40),
              ...questions[quesionNum].answers.map((e) => OutlinedButton(
                    onPressed: () {
                      onAnswerchosed(e);
                    },
                    child: Text(e),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
