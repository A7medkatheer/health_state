import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Add this line to import the 'lottie' package

class ExModel {
  final String title;
  final String body;
  final String image;
  ExModel({required this.title, required this.body, required this.image});
}

List<ExModel> exs = [
  ExModel(
      title: 'jump ',
      body: 'Keep your body fit',
      image: 'assets/images/lottie1.json'),
  ExModel(
      title: 'pushing',
      body: 'Choose the appropriate diet',
      image: 'assets/images/lotte1.json'),
  ExModel(
      title: 'leg',
      body: 'Choose the appropriate diet',
      image: 'assets/images/lotte2.json'),
  ExModel(
      title: 'jump ',
      body: 'Keep your body fit',
      image: 'assets/images/lottie1.json'),
  ExModel(
      title: 'pushing',
      body: 'Choose the appropriate diet',
      image: 'assets/images/lotte1.json'),
  ExModel(
      title: 'leg',
      body: 'Choose the appropriate diet',
      image: 'assets/images/lotte2.json'),
];

class ExPrivate extends StatefulWidget {
  const ExPrivate({Key? key}) : super(key: key);

  @override
  State<ExPrivate> createState() => _ExPrivateState();
}

class _ExPrivateState extends State<ExPrivate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/exa.jpeg'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Exersises 12',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>
                      buildItemex(exs[index], context),
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                  itemCount: exs.length),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildItemex(ExModel model, context) => GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Lottie.asset(
              model.image,
              height: 90,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              model.title,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) => SizedBox(
            height: 650,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // image:  DecorationImage(
                        //   image: AssetImage(model.image),
                        //   fit: BoxFit.fill,
                        // ),

                        color: Colors.white),
                    child:   Lottie.asset(
                      model.image,
                      // height: 90,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Duration',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.minus_circle)),
                          const Text(
                            '00:30',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.add_circled)),
                        ],
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Instructor',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent),
                      ),
                    ],
                  ),
                  const Text(
                    'You should reach the Miami naturally in front of the straight lure a'
                    ' good distance away'
                    ' and then hold the double braided handle'
                    ' holding it steady just as you keep your back arched.',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        );
        // Navigator.pushNamed(context,
        //     Routes.itemExRoute); // bottomSheet:  InteractiveBottomSheet(
      },
    );
