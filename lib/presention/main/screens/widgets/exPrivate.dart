import 'package:flutter/material.dart';

class exPrivate extends StatelessWidget {
  const exPrivate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage('assets/images/e5.jpeg'),fit: BoxFit.fill)),),
          Expanded(
            child: ListView.separated(scrollDirection: Axis.vertical,itemBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Icon(Icons.fitness_center_outlined),
                SizedBox(width: 20,),
                Text('TRICEPS DIEPS',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
              ],),
            ), separatorBuilder: (context,index)=>Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(width: double.infinity,height: 1,color: Colors.grey,),
            ), itemCount: 10),
          )
        ],),
      ),
    );
  }
}
