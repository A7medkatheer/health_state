import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 90,
                      lineWidth: 12,
                      percent: 0.6,
                      center: const Text('     0 \n   left   \n  2000'),
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
                  Text('0'),
                  Text('lunch'),
                  Text('0'),
                  Text('Dinner'),
                  Text('0'),
                  Text('Snacks'),
                  Text('0'),
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
                      Text("0%"),
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
                      Text("0g     "),
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
                      Text("0%"),
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
                      Text("0%"),
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
                      Text("0g     "),
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
    );
  }
}
