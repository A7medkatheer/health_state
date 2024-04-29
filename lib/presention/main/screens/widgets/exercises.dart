import 'package:flutter/material.dart';

class Exercisespage extends StatelessWidget {
  const Exercisespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: const Image(image: AssetImage('assets/images/ketf.jpeg')),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: const Image(image: AssetImage('assets/images/ketf.jpeg')),
            ),
          ],
        ),
      ),
    );
  }
}
