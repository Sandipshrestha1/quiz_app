import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'questions.dart';
import 'start_screen.dart';
import 'result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

// we cann't use var because var resultrestrict   activescreen
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

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        );
    }
//var screenWidget = StartScreen(switchScreen);



if (activeScreen == 'result-screen') {



  screenWidget = const ResultsScreen();
}
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
          child: screenWidget,
          //activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}
