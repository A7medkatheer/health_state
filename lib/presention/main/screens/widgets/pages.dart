import 'package:flutter/material.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/card_diets.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/model_diets.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';

class DietsPage extends StatelessWidget {
  const DietsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: NavCardsDiet(diet: diet[index])),
        itemCount: diet.length,
      ),
    );
  }
}

class NavCardsDiet extends StatelessWidget {
  const NavCardsDiet({super.key, required this.diet});
  final Diets diet;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.startDiets, arguments: diet);
      },
      child: CardDiet(diet: diet),
    );
  }
}






