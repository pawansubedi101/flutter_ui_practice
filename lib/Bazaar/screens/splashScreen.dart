import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/login_signup_screen.dart';

class BazarSplashScreen extends StatefulWidget {
  const BazarSplashScreen({super.key});

  @override
  State<BazarSplashScreen> createState() => _BazarSplashScreenState();
}

class _BazarSplashScreenState extends State<BazarSplashScreen> {
  _gotoHomePage() {
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => BazarLoginSignUpPage()));
    });
  }

  @override
  void initState() {
    _gotoHomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 236, 76, 13),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            BazarLogo(),
          ],
        ),
      ]),
    );
  }
}

class BazarLogo extends StatelessWidget {
  const BazarLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3, color: Colors.amber),
              borderRadius: BorderRadius.circular(100)),
          child: Icon(
            CupertinoIcons.shopping_cart,
            size: 50,
            color: Colors.indigo,
          ),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Ba',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 32,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: 'Zaar',
              style: TextStyle(
                  color: Color.fromARGB(255, 160, 255, 7),
                  fontSize: 32,
                  fontWeight: FontWeight.w500))
        ]))
      ],
    );
  }
}
