import 'package:flutter/material.dart';

class MessengerBottomNavbar extends StatelessWidget {
  MessengerBottomNavbar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (i) {
          currentIndex = i;
        },
        elevation: 5,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.chat_bubble),
              label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt), label: 'People'),
          BottomNavigationBarItem(
              icon: Icon(Icons.picture_in_picture), label: 'Stories'),
        ]);
  }
}
