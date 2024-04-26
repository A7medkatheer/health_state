import 'package:flutter/material.dart';
import 'package:health_state/presention/main/screens/widgets/home_page.dart';
import 'package:health_state/presention/main/screens/widgets/pages.dart';
import 'package:iconsax/iconsax.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  // static String id = 'home_page';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff000000),
      appBar: AppBar(
          leading: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          title: const Text('Health State'),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/health.png',
                height: 50,
                width: 50,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            currentPage = value;
          });
        },
        // backgroundColor: Color(0xff1C1C1E),
        //        height: 60,
        elevation: 0,
        animationDuration: const Duration(seconds: 4),
        selectedIndex: currentPage,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Iconsax.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          NavigationDestination(
            icon: Image(
              image: AssetImage('assets/images/hat.png'),
              color: Colors.black,
            ),
            label: 'Coach',
          ),
          NavigationDestination(
            icon: Icon(
              Iconsax.messages,
              color: Colors.black,
            ),
            label: 'chat',
          ),
          NavigationDestination(
            icon: Icon(
              Iconsax.user,
              color: Colors.black,
            ),
            label: 'user',
          ),
        ],
      ),
    );
  }
}
