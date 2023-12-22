// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChatsListView extends StatelessWidget {
  const ChatsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: ((context, index) {
        return ListTile(
          // tileColor: Colors.teal,
          onTap: () {},
          leading: const CircleAvatar(
            radius: 22,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                // backgroundColor: Colors.grey.shade100,
                radius: 17,
                backgroundImage: AssetImage('assets/images/person.png'),
              ),
            ),
          ),
          title: const Text('John Due'),
          subtitle: const Text('You missed a video chat with admin.'),
          trailing: const Text('Aug 22, 2022'),
        );
      }),
    );
  }
}
