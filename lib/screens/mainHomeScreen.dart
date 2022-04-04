import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'J 1 Home (Create Profile, Notification, Tips)/homescreen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: buildPages(),

      backgroundColor: Colors.white,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
          child: BottomNavyBar(
            iconSize: 27,
            itemCornerRadius: 15,
            containerHeight: 70,
            showElevation: false,
            backgroundColor: Colors.white,
            selectedIndex: index,
            onItemSelected: (index) {
              setState(() {
                this.index = index;
              });
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon : Image.asset('assets/icon/home.png', color: const Color(0xff3e80ff),scale: 3,),
                title: const Text('Home',style: TextStyle(fontSize: 16),),
                textAlign: TextAlign.center,
                inactiveColor: Colors.blue,
              ),
              BottomNavyBarItem(
                icon : Image.asset('assets/icon/list (1).png', color: const Color(0xff3e80ff),scale: 3),
                title: const Text('Applications',style: TextStyle(fontSize: 15),),
                textAlign: TextAlign.center,
                inactiveColor: Colors.blue,
              ),
              BottomNavyBarItem(
                icon : Image.asset('assets/icon/chat.png', color: const Color(0xff3e80ff),scale: 3,),
                title: const Text('Chat',style: TextStyle(fontSize: 16),),
                textAlign: TextAlign.center,
                inactiveColor: Colors.blue,
              ),
              BottomNavyBarItem(
                icon : Image.asset('assets/icon/user.png', color: const Color(0xff3e80ff),scale: 25,),
                title: const Text('Profile',style: TextStyle(fontSize: 16),),
                textAlign: TextAlign.center,
                inactiveColor: Colors.blue,
              ),
            ],
          ),
        ),
    );
  }
  Widget buildPages(){
    switch(index)
    {
      case 0: return const HomePage();
      case 1: return const Center(child: Text('Applications'),);
      case 2: return const Center(child: Text('Chat'),);
      case 3: return const Center(child: Text('Profile'),);
      default: return const HomePage();
    }
  }
}
