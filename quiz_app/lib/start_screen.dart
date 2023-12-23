import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
//final Color color1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.purple,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: double.infinity, height: 350,),
          const SizedBox(height: 60),
          const Text(
            "Learn Flutter the fun Way!",
            style: TextStyle(fontSize: 28.0, color: Colors.white),
          ),
          const SizedBox(height: 40),
          ElevatedButton(  
            onPressed: () {},
            child: const Text("Start Quiz", style: TextStyle(fontSize: 18.0),),
          ),
        ],
      ),
    );
  }
}
