import 'package:flutter/cupertino.dart';

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
          itemBuilder: (context, index) => FoodImage(recipe: recipes[index],),
        ),
      ),
    );
  }
}

class FoodImage extends StatelessWidget {
  const FoodImage({
    super.key, required this.recipe,

  });
final SimpleRecipeModel recipe ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:  DecorationImage(
              image: AssetImage(recipe.image),
              fit: BoxFit.fill)),
    );
  }
}

class SimpleRecipeModel {
  final String image;
  SimpleRecipeModel({required this.image});
}

List<SimpleRecipeModel> recipes = [
  SimpleRecipeModel(image: "assets/food/IMG_20240621_203739.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_203952.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_204026.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_204101.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_204127.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_204148.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_204208.jpg"),
  SimpleRecipeModel(image: "assets/food/IMG_20240621_204945.jpg"),
];
