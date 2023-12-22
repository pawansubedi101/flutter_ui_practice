import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSearchbtn extends StatelessWidget {
  const ChatSearchbtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25),
      color: Colors.grey.shade100,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: Row(
            children: const [
              SizedBox(
                width: 15,
              ),
              Icon(
                CupertinoIcons.search,
                size: 20,
                color: Color.fromARGB(255, 119, 109, 109),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Search',
                style: TextStyle(
                    color: Color.fromARGB(255, 119, 109, 109),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
