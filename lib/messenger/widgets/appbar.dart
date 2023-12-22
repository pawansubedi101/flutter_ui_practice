import 'package:flutter/material.dart';

PreferredSizeWidget messengerAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: CircleAvatar(
        backgroundColor: Colors.red,
        backgroundImage: AssetImage(
          'assets/images/person.png',
        ),
      ),
    ),
    title: const Text(
      'Chats',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          radius: 14,
          child: const Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 16,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          radius: 14,
          child: const Icon(
            Icons.edit,
            size: 16,
            color: Colors.black,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      )
    ],
  );
}

class MessengerAppBar extends StatelessWidget {
  const MessengerAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // color: Colors.grey,
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage(
                  'assets/images/person.png',
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  radius: 14,
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  radius: 14,
                  child: const Icon(
                    Icons.edit,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
