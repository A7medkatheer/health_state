import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/model_diets.dart';
import 'package:healthystate/presention/main/screens/widgets/cubit/cubit.dart';
import 'package:healthystate/presention/main/screens/widgets/cubit/state.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.diet,
  });
  Diets diet;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double calculateBudget() {
    print(context.read<AppCubit>().index);
    int weight = 70;
    int height = 170;
    int age = 20;
    int gend;
    String gender = "male"; // Assign an initial value to the 'gender' variable
    if (gender == "male") {
      gend = 5;
    } else {
      gend = -161;
    }
    return (10 * weight.toDouble()) +
        (15 * height.toDouble()) -
        (25 * age.toDouble() + gend);
  }

  @override
  Widget build(BuildContext context) {
    late var totalfat = widget.diet.totalFat ?? 1;
    late var totalprotein = widget.diet.totalProtein ?? 1;
    late var totalcarb = widget.diet.totalCarb ?? 1;
    int totalFat = totalfat;
    int totalProtein = totalprotein;
    // Adjusted to include the initial 50g in the total
    int totalCarb = totalcarb;
    Food food = Food(lunch: 300, breakFast: 300, dinner: 200, snacks: 100);
    int totalEat() {
      return food.breakFast + food.lunch + food.dinner + food.snacks;
    }

    int currentCarb = 0;
    int currentFat = 0;
    int currentProtein = 0;
    double percentCarb = (currentCarb / 100) / (totalCarb / 100);
    double percentProtein = currentProtein / totalProtein;
    double percentFat = currentFat / totalFat;

    double budget = calculateBudget();

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.searchScreenRoute);
              },
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text('enter your food ')
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: 100,
                    // ),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black), // Default text style
                        children: <TextSpan>[
                          const TextSpan(text: 'calorie budget '),
                          TextSpan(
                              text: '${widget.diet.nameDiet } \n',
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.green)), // Green text style
                          TextSpan(
                              text: '       ${budget.round()}',
                              style: const TextStyle(
                                  color: Colors.green)), // Green text style
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 90,
                            lineWidth: 12,
                            percent: totalEat() / budget.round(),
                            center: RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.green), // Default text style
                                children: <TextSpan>[
                                  TextSpan(text: ' ${totalEat()}\n '),
                                  const TextSpan(
                                      text: 'left\n',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black)),
                                  TextSpan(
                                      text: '${budget.round() - totalEat()}',
                                      style: const TextStyle(
                                          fontSize: 22, color: Colors.grey)),
                                  // Green text style
                                ],
                              ),
                            ),
                            progressColor: Colors.green,
                            animation: true,
                            animationDuration: 1100,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'breakFast',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "${food.breakFast}",
                          style: const TextStyle(
                              fontSize: 22, color: Colors.green),
                        ),
                        const Text(
                          'lunch',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "${food.lunch}",
                          style: const TextStyle(
                              fontSize: 22, color: Colors.green),
                        ),
                        const Text(
                          'Dinner',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "${food.dinner}",
                          style: const TextStyle(
                              fontSize: 22, color: Colors.green),
                        ),
                        const Text(
                          'Snacks',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          "${food.snacks}",
                          style: const TextStyle(
                              fontSize: 22, color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    // Define the variables

                    Column(
                      children: [
                        Row(
                          children: [
                            const Text("Carbs   "),
                            Text(
                                "${(percentCarb * 100).toStringAsFixed(1)}%"), // Display percentage with one decimal place
                          ],
                        ),
                        LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000,
                          width: 120,
                          lineHeight: 8,
                          percent:
                              percentCarb, // Use the calculated percent directly as it's already a value between 0 and 1
                          progressColor: Colors.green,
                        ),
                        Row(
                          children: [
                            Text("${currentCarb}g     "),
                            Text("left ${totalCarb - currentCarb}g"),
                          ],
                        ),
                      ],
                    ),
                    // Define the variables

                    Column(
                      children: [
                        Row(
                          children: [
                            const Text("Protein   "),
                            Text(
                                "${(percentProtein * 100).toStringAsFixed(1)}%"), // Display percentage with one decimal place
                          ],
                        ),
                        LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000,
                          width: 120,
                          lineHeight: 8,
                          percent: percentProtein,
                          progressColor: Colors.green,
                        ),
                        Row(
                          children: [
                            Text("${currentProtein}g     "),
                            Text("left ${totalProtein - currentProtein}g"),
                          ],
                        ),
                      ],
                    ),
                    // Define the variables

                    Column(
                      children: [
                        Row(
                          children: [
                            const Text("Fat   "),
                            Text(
                                "${(percentFat * 100).toStringAsFixed(1)}%"), // Display percentage with one decimal place
                          ],
                        ),
                        LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000,
                          width: 120,
                          lineHeight: 8,
                          percent:
                              percentFat, // Use the calculated percent directly as it's already a value between 0 and 1
                          progressColor: Colors.green,
                        ),
                        Row(
                          children: [
                            Text("${currentFat}g     "),
                            Text("left ${totalFat - currentFat}g"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Row(),
                // const BottonNavWithAnimatedIcons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Food {
  final int lunch;
  final int breakFast;
  final int dinner;
  final int snacks;

  Food(
      {required this.lunch,
      required this.breakFast,
      required this.dinner,
      required this.snacks});
}
