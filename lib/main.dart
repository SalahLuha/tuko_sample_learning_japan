import 'package:flutter/material.dart';
import 'package:tuko_sample_learning_japan/screens/splash_screen.dart';

void main() {
  runApp(const tuko_sample_learning_japan());
}

class tuko_sample_learning_japan extends StatelessWidget {
  const tuko_sample_learning_japan({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

        debugShowCheckedModeBanner: false,
        home: SplashScreen(),);
  }
}
