import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/Bazaar/screens/splashScreen.dart';

class BazarLoginSignUpPage extends StatelessWidget {
  const BazarLoginSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 76, 13),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 236, 76, 13),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        BazarLogo(),
                        // SizedBox(
                        //   height: 100,
                        // ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  prefixIcon: Icon(CupertinoIcons.person),
                                  hintText: 'Username',
                                  border: OutlineInputBorder()),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  prefixIcon: Icon(CupertinoIcons.lock),
                                  hintText: 'Password',
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
                                  border: OutlineInputBorder()),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Card(
                              color: const Color.fromARGB(255, 19, 15, 255),
                              elevation: 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                    width: double.infinity,
                                    // color: Color.fromARGB(255, 19, 15, 255),
                                    alignment: Alignment.center,
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'SIGN IN',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Forgot Password ? '))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1.5,
                          color: Colors.indigo,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text('Or Sign In Using'),
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          color: Colors.indigo,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 85, 40, 192),
                        child: Text(
                          'f',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 222, 220, 228),
                        child: Text(
                          'G',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t you have an account ? ',
                      style: TextStyle(fontSize: 12),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Signup Now !',
                          style: TextStyle(fontSize: 12),
                        ))
                  ],
                )
              ],
            )
          ],
        ));
  }
}
