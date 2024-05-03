import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        CardsDiet(),
        CardsDiet(),
        CardsDiet(),
        CardsDiet(),
        CardsDiet(),
        CardsDiet(),
      ]),
    );
  }
}

class CardsDiet extends StatelessWidget {
  const CardsDiet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // textDirection: TextDirection.rtl,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, top: 30),
              height: 400,
              width: 336,

              // margin: const EdgeInsets.only(left: 30, top: 30),
              // alignment: Alignment.center,
              child: Image.asset(
                'assets/images/Rectangle 3.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        // const Text('Chat',
        //     style: TextStyle(fontSize: 30, color: Colors.black)),
        Container(
          padding: const EdgeInsets.only(left: 30, top: 30),
          margin: const EdgeInsets.only(left: 10),
          height: 400,
          width: 336,
          alignment: Alignment.topLeft,
          child: const Column(
            children: [
              Text(
                textAlign: TextAlign.left,
                'Premium',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 33.0),
              ),
              Text(
                // textAlign: TextAlign.left,
                'CALORIE COUNTING',
                style: TextStyle(
                    color: Color(0xffE4FF74),
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0),
              ),
              SizedBox(height: 290),
              Text(
                'Time-tested and proven, No food is \n off-limits',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 19.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
