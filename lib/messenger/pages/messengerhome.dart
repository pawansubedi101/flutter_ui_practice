import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/messenger/screens/callScreen.dart';

import '../screens/chatScreen.dart';

class MessengerHomePage extends StatefulWidget {
  const MessengerHomePage({super.key});

  @override
  State<MessengerHomePage> createState() => _MessengerHomePageState();
}

class _MessengerHomePageState extends State<MessengerHomePage> {
  List<Widget> screens = [
    const ChatScreen(),
    const CallScreen(),
    const Text('people screen'),
    const Text('gsdfg')
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              setState(() {
                currentIndex = i;
              });
            },
            elevation: 5,
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.chat_bubble),
                  label: 'Chats'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_call), label: 'Calls'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_alt), label: 'People'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.picture_in_picture), label: 'Stories'),
            ]));
  }
}
