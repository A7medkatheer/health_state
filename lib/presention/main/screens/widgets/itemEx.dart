import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class itemEx extends StatelessWidget {
  const itemEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset('assets/images/lottie1.json'),        ],
      ),
    );
  }
}
