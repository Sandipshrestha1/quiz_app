import 'package:flutter/material.dart';
import 'questions.dart';
import 'questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers, required void Function() onRestart,
    
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++)
// or i = i+1
    {
      //loop body
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

// above line can be written  like this
    // final numCorrectQuestions = summaryData.where((data)  =>
    //      data['user_answer'] == data['correct_answer'];
    // ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " You answer $numCorrectQuestions of  $numTotalQuestions questions correctly",
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),

            QuestionsSummary(summaryData),
            //const Text("List of answers and questions ...."),
            const SizedBox(height: 30),
            TextButton(
              onPressed: (){},
              child: const Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
