import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.switchScreen, {super.key,});
 final void Function() switchScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
         Image.asset(
          'assets/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const Text(  
          'Learn Flutter the fun way!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed:switchScreen,           
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ]),
    );
  }
}
