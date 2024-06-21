import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/simple_recipes.dart';

class Intgredients extends StatelessWidget {
  const Intgredients({
    super.key,
    required this.recipe,
  });
  final SimpleRecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: const EdgeInsets.only(left: 20, top: 30),
              height: 366.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(recipe.image), fit: BoxFit.fill)),
            ),
            Container(
              // padding: const EdgeInsets.only(left: 20, top: 30),
              height: 366.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(recipe.intgredients!),
                      fit: BoxFit.fill)),
            ),
            Text(
              recipe.steps!,
              style: const TextStyle(fontSize: 19),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
