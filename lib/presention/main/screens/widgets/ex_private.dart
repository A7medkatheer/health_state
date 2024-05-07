import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../resources/routes_manager.dart';

class ExPrivate extends StatelessWidget {
  const ExPrivate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                      image: AssetImage('assets/images/e5.jpeg'),
                      fit: BoxFit.fill)),
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>  GestureDetector(
                    child:  Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Lottie.asset('assets/images/lottie1.json',height: 50,fit: BoxFit.fill ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'TRICEPS DIEPS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                    onTap: (){
                      Navigator.pushNamed(context, Routes.itemExRoute);                      // bottomSheet:  InteractiveBottomSheet(
                    },
                  ),
                  
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
