import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_buttons/widgets/pretty_neumorphic_button.dart';


import '../../../resources/color_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.primary,
                            icon: Icon(CupertinoIcons.person_circle)),
                        SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: Duration(
                            milliseconds: 20),
                          label: 'person',
                          onPressed: () {
                            // Navigator.pushNamed(context, routes.adminRoute);
                          },
                        ),
                      ],),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.orange,
                            icon: Icon(CupertinoIcons.settings_solid)),
                        SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: Duration(
                            milliseconds: 20),
                          label: 'language',
                          onPressed: () {},
                        ),
                      ],),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.orange,
                            icon: Icon(CupertinoIcons.phone_circle)),
                        SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: Duration(
                            milliseconds: 20),
                          label: 'call center',
                          onPressed: () {
                            BottomSheet(onClosing: ()=>{}, builder: (context)=>Column(children: [
                              Row(
                                children: [Text('01205193855')],
                              )

                            ],),);
                          },
                        ),
                      ],),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            iconSize: 40,
                            color: ColorManager.orange,
                            icon: Icon(CupertinoIcons.arrow_turn_up_right
                            )),
                        SizedBox(width: 20,),
                        PrettyNeumorphicButton(duration: Duration(
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
