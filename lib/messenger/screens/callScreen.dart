import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/chatsListview.dart';
import '../widgets/chatsearchbtn.dart';
import '../widgets/horizontollistview.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: const [
          MessengerAppBar(
            title: "Calls",
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
