import 'package:flutter/material.dart';
import 'package:health_state/presention/resources/routes_manager.dart';
class image{
 final String images;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView.builder(
        itemBuilder:(context,index)=> BuildItem(photo[index],context),
        itemCount:photo.length ,

    ));
  }
}
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
