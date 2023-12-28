import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisSize: MainAxisSize.min,

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "The question ...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            AnswerButton(answerText: "Answer 1", onTap: () {}),
            AnswerButton(answerText: "Answer 2", onTap: () {}),
            AnswerButton(answerText: "Answer 3", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
