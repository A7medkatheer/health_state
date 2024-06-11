import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';
class Image{
 final String images;

  Image(this.images);

}
List<Image>photo=[

  Image('assets/images/e1.jpeg'),
  Image('assets/images/e2.jpeg'),
  Image('assets/images/e3.jpeg'),
  Image('assets/images/e5.jpeg'),
  Image('assets/images/e6.jpeg'),
  Image('assets/images/e8.jpeg'),
];
class Exercisespage extends StatelessWidget {
  const Exercisespage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemBuilder:(context,index)=> buildItem(photo[index],context),
        itemCount:photo.length ,
      ),
    );
  }
}
Widget buildItem (Image model,context)=>Column(
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
//
// class exModel{
//   final String title;
//   final String body;
//   final String image;
//   exModel({
//     required this.title,
//     required this.body,
//     required this.image});
// }
//
// List<exModel>boarding=[
//   exModel(title: 'Fitness ', body: 'Keep your body fit', image: 'assets/images/e1.jpeg'),
//   exModel(title: 'Diet', body: 'Choose the appropriate diet', image: 'assets/images/e1.jpeg'),
//   exModel(title: 'Food System', body: 'make your life more healthy', image: 'assets/images/e1.jpeg'),
//   exModel(title: 'Food System', body: 'make your life more healthy', image: 'assets/images/e1.jpeg'),
//   exModel(title: 'Food System', body: 'make your life more healthy', image: 'assets/images/e1.jpeg'),
//   exModel(title: 'Food System', body: 'make your life more healthy', image: 'assets/images/e1.jpeg'),
//   exModel(title: 'Food System', body: 'make your life more healthy', image: 'assets/images/e1.jpeg'),
// ];