import 'package:flutter/cupertino.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';

class SimpleRecipes extends StatelessWidget {
  const SimpleRecipes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recipes.length,
          itemBuilder: (context, index) => FoodImage(
            recipe: recipes[index],
          ),
        ),
      ),
    );
  }
}

class FoodImage extends StatelessWidget {
  const FoodImage({
    super.key,
    required this.recipe,
  });
  final SimpleRecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.intgredients,
          arguments: recipe,
        );
        // arguments: recipe
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(recipe.image), fit: BoxFit.fill)),
      ),
    );
  }
}

class SimpleRecipeModel {
  final String image;
  final String intgredients;
  final String steps;
  SimpleRecipeModel(
      {required this.image, required this.intgredients, required this.steps});
}

List<SimpleRecipeModel> recipes = [
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_203739.jpg",
      intgredients: "assets/food/IMG_20240622_002938.jpg",
      steps:
          "   2 steps\n 1.  Combine all ingredients in blender.\n\n 2.  Blend until smooth. Serve immediately or \n  store in refrigerator.  Enjoy!"),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_203952.jpg",
      steps: '',
      intgredients: ''),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_204026.jpg",
      intgredients: '',
      steps: ''),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_204101.jpg",
      intgredients: '',
      steps: ''),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_204127.jpg",
      intgredients: '',
      steps: ''),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_204148.jpg",
      intgredients: '',
      steps: ''),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_204208.jpg",
      intgredients: '',
      steps: ''),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_234942.jpg",
      intgredients: '',
      steps: ''),
];
