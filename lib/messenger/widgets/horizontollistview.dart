import 'package:flutter/material.dart';

class HorizontolView extends StatelessWidget {
  const HorizontolView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          // itemExtent: 60,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade100,
                          radius: 22,
                          child: const Icon(
                            Icons.video_call,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Start\ncall',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        CircleAvatar(
                          radius: 22,
                          backgroundImage:
                              AssetImage('assets/images/person.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Admin\nSubedi',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  );
          }),
    );
  }
}
