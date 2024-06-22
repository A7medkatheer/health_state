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
  final String? intgredients;
  final String? steps;
  SimpleRecipeModel({required this.image, this.intgredients, this.steps});
}

List<SimpleRecipeModel> recipes = [
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_203739.jpg",
      intgredients: "assets/food/IMG_20240622_002938.jpg",
      steps:
          "   2 steps\n 1.  Combine all ingredients in blender.\n\n 2.  Blend until smooth. Serve immediately or \n  store in refrigerator.  Enjoy!"),
  SimpleRecipeModel(
    image: "assets/food/IMG_20240621_203952.jpg",
    intgredients: 'assets/food/IMG_20240622_020906.jpg',
    steps: "  8 steps\n"
        "1. Preheat oven to 425 F.\n"
        "\n2. Peel and dice potatoes.  Toss potatoes in a bowl with olive oil, salt, and pepper.\n"
        "\n3. Transfer to a large baking sheet and bake\n "
        "\nfor 10 minutes. \n"
        "\n4. Meanwhile, in a small bowl combine lemon juice, Dijon mustard, parsley, dill, and potatoes. \n"
        "\n5. Remove sheet pan from the oven after 10 minutes and push the potatoes to one side of the pan.\n"
        "\n6. Place four 5 oz salmon fillets on the other side of the sheet pan with the skin side down and brush with the lemon juice mixture. Add green beans around the salmon.\n"
        "\n7. Return the sheet pan to the oven and cook for an additional 10-15 minutes. Salmon will flake with a fork when cooked.\n"
        "\n8. Garnish with additional chopped dill and parsley, if desired.\n"
        "\nTips:  \n"
        "\n You can use any type of potato, but new or baby potatoes work well since you simply have to halve or quarter them to get nice sized chunks (peeling not necessary).\n "
        "\n If you prefer, you can use fresh parsley and dill.  Try 3 Tbsp of fresh parsley and 1 1/2 Tbsp of fresh dill and adjust from there to taste.  Spices and herbs have very few calories!",
  ),
  SimpleRecipeModel(
      image: "assets/food/IMG_20240621_204026.jpg",
      intgredients: 'assets/food/IMG_20240622_020923.jpg',
      steps: "1. Slice the chicken thighs lengthwise.\n "

"\n2. Heat the oil to medium-high heat in a large skillet.\n" 

"\n3. Add the garam masala and turmeric to the skillet and saute, constantly stirring, for just 1 minute to avoid burning the spice.\n"

"\n4. Add the chicken and salt, stir, and saute for about 3 minutes or until the chicken is no longer pink.\n"

"\n5. Add the red pepper, and saute for another 2 minutes.\n"

  "\n6. Mince the garlic, add to the skillet, and saute for 1 minute, constantly stirring to avoid burning.\n"

"\n7. Add the coconut milk, turn down the heat, and simmer for about 10 minutes.\n" 

"\n8. Chop the cilantro.\n"

"\n9. Divide chicken mixture into 4 equal portions, and garnish with cilantro. Enjoy!\n"

"\nTips:\n"
"\n1 large sweet pepper will make about 1 1/2 cups sliced.\n"

"\nTo keep net carbs low, serve without rice or serve with MyNetDiary's Cauliflower Rice.\n"),
  SimpleRecipeModel(
    image: "assets/food/IMG_20240621_204101.jpg",
    intgredients: 'assets/food/IMG_20240622_020932.jpg',
    // steps: '',
  ),
  SimpleRecipeModel(
    image: "assets/food/IMG_20240621_204127.jpg",
    intgredients: '',
    // steps: '',
  ),
  SimpleRecipeModel(
    image: "assets/food/IMG_20240621_204148.jpg",
    // intgredients: '',
    // steps: '',
  ),
  SimpleRecipeModel(
    image: "assets/food/IMG_20240621_204208.jpg",
    // intgredients: '',
    // steps: '',
  ),
  SimpleRecipeModel(
    image: "assets/food/IMG_20240621_234942.jpg",
    // intgredients: '',
    // steps: '',
  ),
];
