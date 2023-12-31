import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const  Text(" You answer x out of Y questions correctly"),
       const  SizedBox(
          height: 30,
        ),
        const Text("List of answers and questions ...."),
        const SizedBox(height: 30),
        TextButton(
          onPressed: () {},
          child:  const Text("Restart Quiz"),
        ),
      ],
    );
  }
}
