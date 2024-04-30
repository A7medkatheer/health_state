import 'package:flutter/material.dart';
import 'package:health_state/presention/resources/routes_manager.dart';
class image{
 final String images;

<<<<<<< HEAD
  image(this.images);

}
List<image>photo=[
  image('assets/images/e1.jpeg'),
  image('assets/images/e2.jpeg'),
  image('assets/images/e3.jpeg'),
  image('assets/images/e5.jpeg'),
  image('assets/images/e6.jpeg'),
  image('assets/images/e8.jpeg'),
];
class exercisespage extends StatelessWidget {
  const exercisespage({Key? key}) : super(key: key);
=======
class Exercisespage extends StatelessWidget {
  const Exercisespage({Key? key}) : super(key: key);
>>>>>>> 288ded00ced0916e3b4712ef3f7254a564dac83d


  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD

      body: ListView.builder(
        itemBuilder:(context,index)=> BuildItem(photo[index],context),
        itemCount:photo.length ,


=======
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: const Image(image: AssetImage('assets/images/ketf.jpeg')),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: const Image(image: AssetImage('assets/images/ketf.jpeg')),
            ),
          ],
        ),
>>>>>>> 288ded00ced0916e3b4712ef3f7254a564dac83d
      ),
    );
  }
}
<<<<<<< HEAD
Widget BuildItem (image model,context)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [ GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, Routes.exPrivateRoute);
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(model.images),fit: BoxFit.fill)),

      ),
    ),),
  ],
);
=======
>>>>>>> 288ded00ced0916e3b4712ef3f7254a564dac83d
