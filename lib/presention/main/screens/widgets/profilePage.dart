// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_buttons/widgets/pretty_neumorphic_button.dart';


import '../../../resources/color_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/e1.jpeg'),
                      radius: 70,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.primary,
                            icon: const Icon(CupertinoIcons.person_circle)),
                        const SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: const Duration(
                            milliseconds: 20),
                          label: 'person',
                          onPressed: () {
                            // Navigator.pushNamed(context, routes.adminRoute);
                          },
                        ),
                      ],),
                    const SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.orange,
                            icon: const Icon(CupertinoIcons.settings_solid)),
                        const SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: const Duration(
                            milliseconds: 20),
                          label: 'language',
                          onPressed: () {},
                        ),
                      ],),
                    const SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.orange,
                            icon: const Icon(CupertinoIcons.phone_circle)),
                        const SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: const Duration(
                            milliseconds: 20),
                          label: 'call center',
                          onPressed: () {
                            BottomSheet(onClosing: ()=>{}, builder: (context)=>const Column(children: [
                              Row(
                                children: [Text('01205193855')],
                              )

                            ],),);
                          },
                        ),
                      ],),
                    const SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.orange,
                            icon: const Icon(CupertinoIcons.arrow_turn_up_right
                            )),
                        const SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: const Duration(
                            milliseconds: 20),
                          label: 'logOut',
                          onPressed: () {
                          },
                        ),
                      ],),
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//
// import 'package:flutter/material.dart';
// import 'package:healthystate/presention/resources/color_manager.dart';
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('my profile'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             decoration: BoxDecoration(
//               color: ColorManager.move
//             ),
//             accountName: Text('user name'),
//             accountEmail: Text('user@example.com'),
//             currentAccountPicture: CircleAvatar(
//               backgroundColor: Colors.white,
//               child:  CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/e1.jpeg'),
//                 radius: 70,
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('profile'),
//             onTap: () {
//               // التنقل إلى شاشة تعديل الحساب
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('setting'),
//             onTap: () {
//               // التنقل إلى شاشة الإعدادات
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.exit_to_app),
//             title: Text('تسجيل الخروج'),
//             onTap: () {
//               // تسجيل خروج المستخدم
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }