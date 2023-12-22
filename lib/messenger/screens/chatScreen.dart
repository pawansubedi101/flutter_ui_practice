// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/chatsListview.dart';
import '../widgets/chatsearchbtn.dart';
import '../widgets/horizontollistview.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: const [
          MessengerAppBar(
            title: "Chats",
          ),
          ChatSearchbtn(),
          SizedBox(
            height: 10,
          ),
          HorizontolView(),
          Expanded(child: ChatsListView()),
        ],
      ),
    );
  }
}
