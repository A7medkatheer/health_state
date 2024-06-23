import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/color_manager.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      ),
    );
  }
}
