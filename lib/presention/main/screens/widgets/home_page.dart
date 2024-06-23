import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/color_manager.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  double calculateBudget() {
    int weight = 70;
    int height = 170;
    int age = 10;
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

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Container(
          width: double.infinity,
          height: 200,
          child: Column(
            children: [
              Card(
                child: Text('BreakFast',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                color: Colors.white,
              )
            ],
          ),
        );
      },backgroundColor: ColorManager.primary,label: Text('Add'),
      icon: Icon(Icons.add),),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 100,
                ),
                const Text('calorie budget\n       2000'),
                const SizedBox(
                  width: 50,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Column(children: [
                  Text('exercise'),
                  Text('0'),
                  Text('Steps'),
                  Text('0'),
                  Text('Water'),
                  Text('0'),
                  Text('Notes'),
                  Text('0'),
                ]),
                // const SizedBox(
                //   width: 50,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 30),
                  child: Column(
                    children: [
                      CircularPercentIndicator(
                        radius: 90,
                        lineWidth: 12,
                        percent: 0.6,
                        center: const Text('   500   \n   left   \n  1500'),
                        progressColor: Colors.green,
                        animation: true,
                        animationDuration: 1000,
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ],
                  ),
                ),

                const Column(
                  children: [
                    Text('breakfast'),
                    Text('100'),
                    Text('lunch'),
                    Text('300'),
                    Text('Dinner'),
                    Text('50'),
                    Text('Snacks'),
                    Text('50'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Text("Carbs   "),
                        Text("60%"),
                      ],
                    ),
                    LinearPercentIndicator(
                      animation: true,
                      width: 120,
                      lineHeight: 8,
                      percent: 0.6,
                      progressColor: Colors.green,
                    ),
                    const Row(
                      children: [
                        Text("50g     "),
                        Text("left 301g"),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text("Protein   "),
                        Text("50%"),
                      ],
                    ),
                    LinearPercentIndicator(
                      animation: true,
                      width: 120,
                      lineHeight: 8,
                      percent: 0.5,
                      progressColor: Colors.green,
                    ),
                    const Row(
                      children: [
                        Text("0g     "),
                        Text("left 134g"),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text("Fat   "),
                        Text("30%"),
                      ],
                    ),
                    LinearPercentIndicator(
                      animation: true,
                      width: 120,
                      lineHeight: 8,
                      percent: 0.3,
                      progressColor: Colors.green,
                    ),
                    const Row(
                      children: [
                        Text("30g     "),
                        Text("left 104g"),
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
=======
    Food food = Food(lunch: 300, breakFast: 300, dinner: 200, snacks: 100);
    int totalEat() {
      return food.breakFast + food.lunch + food.dinner + food.snacks;
    }

    int currentCarb = 80;
    int totalCarb = 130; // Adjusted to include the initial 50g in the total
    double percentCarb = currentCarb / totalCarb;
    int currentProtein = 101;
    int totalProtein = 260;
    double percentProtein = currentProtein / totalProtein;
    int currentFat = 30;
    int totalFat = 101;
    double percentFat = currentFat / totalFat;

    double budget = calculateBudget();
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
