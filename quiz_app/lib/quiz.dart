import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

// we cann't use var because var restrict   activescreen
//  var activeScreen = const StartScreen();
  //Widget?  activeScreen ;
  // StartScreen(switchScreen);

// @override
// void initState() {
// activeScreen = StartScreen(switchScreen);

//     super.initState();
//   }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
//  QuestionsScreen();
    });
  }

  @override
Widget build(BuildContext context) {


Widget screenWidget = StartScreen(switchScreen);

if (activeScreen == 'questions-screen') {
  screenWidget = const QuestionsScreen();
}
//var screenWidget = StartScreen(switchScreen);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(11, 26, 230, 1),
                Color.fromRGBO(60, 170, 9, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
