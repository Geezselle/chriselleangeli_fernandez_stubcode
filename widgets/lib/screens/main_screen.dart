import 'package:flutter/material.dart';

import 'package:widgets/screens/friends_screen.dart';
import 'package:widgets/screens/newsfeed_screen.dart';
import 'package:widgets/screens/notification_screen.dart';
import 'package:widgets/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int  currentpage = 0;


  final List<Widget> pages = const [
    NewsfeedScreen(),
    FriendsScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        onTap: (index){
          setState(() {
            currentpage = index;
          });
        },
        items: [
          BottomNavigationBarItem( backgroundColor: Colors.blueAccent, icon: Icon(Icons.new_label), label: "News Feed"),
          BottomNavigationBarItem( backgroundColor: Colors.blueAccent, icon: Icon(Icons.person), label: "Friends"),
          BottomNavigationBarItem( backgroundColor: Colors.blueAccent, icon: Icon(Icons.notification_add), label: "Notifcation"),
          BottomNavigationBarItem( backgroundColor: Colors.blueAccent, icon: Icon(Icons.person_2), label: "Profile"),
        ]),
    );
  }
}