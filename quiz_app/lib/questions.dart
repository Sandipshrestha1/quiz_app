import 'models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    "What are the main building blocks of flutter UIs ?",
    ["Widgets", "Components", "Blocks", "Functions"],
  ),
  QuizQuestion(
    "How are Flutter Uis built? ",
    [
      'By combining Widgets in code ',
      'By combining widgets in a visual editor',
      'By defining widgets in  config files',
      'By using XCode for ios and Android Studio for Android'
    ],
  ),
  QuizQuestion(
    'What is the purpose of StatefulWidget? ',
    [
      'update ui as data ',
      'update data as UI changed',
      'Ignor data changes',
      'Render UI that does not depend on data'
    ],
  ),
  QuizQuestion(
    "Whick widget should you try to use more often : StatelessWidget or StatefulWidget",
    [
      "statefulWidget",
      "StatelessWidget",
      "Both are equally used ",
      "None of the above",
    ],
  ),
  QuizQuestion("How should you update data inside of StatefulWidgets? ", [
    'By calling stState()',
    "By calling updateData()",
    "By calling updateUI()",
    "By calling updateState()"
  ],),
];
