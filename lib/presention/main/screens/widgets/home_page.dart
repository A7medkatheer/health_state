import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  double calculateBudget() {
    int weight = 70;
    int height = 170;
    int age = 10;
    return (10 * weight.toDouble()) +
        (15 * height.toDouble()) -
        (25 * age.toDouble());
  }

  @override
  Widget build(BuildContext context) {
    Food food = Food(lunch: 100, breakFast: 500, dinner: 200, snacks: 100);
    int totalEat() {
      return food.breakFast + food.lunch + food.dinner + food.snacks;
    }

    int currentCarb = 70;
    int totalCarb = 350; // Adjusted to include the initial 50g in the total
    double percentCarb = currentCarb / totalCarb;
    int currentFat = 30;
    int totalFat = 134;
    double percentFat = currentFat / totalFat;
    int currentProtein = 101;
    int totalProtein = 201;
    double percentProtein;
    double budget = calculateBudget();
    percentProtein = currentProtein / totalProtein * 100;
    return Container(
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
                      fontSize: 22, color: Colors.black), // Default text style
                  children: <TextSpan>[
                    const TextSpan(text: 'calorie budget\n'),
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
                      animationDuration: 1000,
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
                    style: const TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  const Text(
                    'lunch',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "${food.lunch}",
                    style: const TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  const Text(
                    'Dinner',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "${food.dinner}",
                    style: const TextStyle(fontSize: 22, color: Colors.green),
                  ),
                  const Text(
                    'Snacks',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    "${food.snacks}",
                    style: const TextStyle(fontSize: 22, color: Colors.green),
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
                          "${percentProtein.toStringAsFixed(1)}%"), // Display percentage with one decimal place
                    ],
                  ),
                  LinearPercentIndicator(
                    animation: true,
                    width: 120,
                    lineHeight: 8,
                    percent: percentProtein /
                        100, // Convert percentage to a value between 0 and 1
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
