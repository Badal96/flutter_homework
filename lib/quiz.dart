
import 'package:flutter/material.dart';
import './questions_screens.dart';
import './start_Screen.dart';

class Quiz extends StatefulWidget  {  
 const Quiz ({super.key});
@override
  State <Quiz> createState () {
    return _QuizState();
  }  
}

class _QuizState extends State <Quiz> {
 var startQuiz = false;
void switchScreen ()  { 
  setState(() {
    startQuiz = true;
  });
 }
 
_QuizState ();

  @override
  Widget build (context) {
   return MaterialApp(
      home: Scaffold(
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
          child:startQuiz?const QuestionsScreen():StartScreen(switchScreen),
        ),
      ),
    );
  }
}