import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../resources/routes_manager.dart';

class exModel{
  final String title;
  final String body;
  final String image;
  exModel({
    required this.title,
    required this.body,
    required this.image});
}

List<exModel>exs=[
  exModel(title: 'Fitness ', body: 'Keep your body fit', image: 'assets/images/lottie1.json'),
  exModel(title: 'Diet', body: 'Choose the appropriate diet', image: 'assets/images/lottie1.json'),
  exModel(title: 'Diet', body: 'Choose the appropriate diet', image: 'assets/images/lottie1.json'),
  exModel(title: 'Diet', body: 'Choose the appropriate diet', image: 'assets/images/lottie1.json'),
  exModel(title: 'Diet', body: 'Choose the appropriate diet', image: 'assets/images/lottie1.json'),
  exModel(title: 'Diet', body: 'Choose the appropriate diet', image: 'assets/images/lottie1.json'),

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
        padding:  EdgeInsets.all(10.0),
        child: Column(
          children: [
             SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:  DecorationImage(
                      image: AssetImage('assets/images/e5.jpeg'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(height: 20 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Exersises 12',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>buildItemex(exs[index],context),
                  separatorBuilder: (context, index) => Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildItemex (exModel model,context)=> GestureDetector(
  child:  Padding(
    padding:  EdgeInsets.all(12.0),
    child: Row(
      children: [
        Lottie.asset(model.image,height: 90, ),
         SizedBox(
          width: 30,
        ),
         Text(
          model.title,
          style: TextStyle(
            fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ),
  onTap: (){
    Navigator.pushNamed(context, Routes.itemExRoute); // bottomSheet:  InteractiveBottomSheet(
  },
);
