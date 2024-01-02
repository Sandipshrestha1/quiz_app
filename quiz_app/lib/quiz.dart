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
  List<String> _selectedAnswers = [];
  var _activeScreen = 'start-screen';

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
      _activeScreen = 'questions-screen';
//  QuestionsScreen();
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        _activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'result-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: _chooseAnswer,
      );
    }
//var screenWidget = StartScreen(switchScreen);

    if (_activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers, 
        onRestart: restartQuiz,
        // onRestart: restartQuiz,
      );
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
