import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'start_screen.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
// we cann't use var because var restrict   activescreen 
//  var activeScreen = const StartScreen();
 Widget?  activeScreen ;
 // StartScreen(switchScreen);

@override
void initState() {
activeScreen= StartScreen(switchScreen);

    super.initState();
  }

void switchScreen() {
setState(() {
activeScreen =const  QuestionsScreen();


});

}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(46, 6, 46, 1),
                  Color.fromRGBO(226, 19, 226, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen,
            ),
      ),
    );
  }
}
