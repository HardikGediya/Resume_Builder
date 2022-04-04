import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'confirmationscreen.dart';
import 'confirmationscreen.dart';
import '../J 1 Home (Create Profile, Notification, Tips)/profilescreen.dart';
import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(
                context, MaterialPageRoute(
                builder: (context) => const ConfirmationPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/image/logoBg.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.17,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.37,
                      decoration: BoxDecoration(
                        color: const Color(0xff3e80ff),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Transform.scale(
                        scale: 0.5,
                        child: Image.asset(
                          'assets/icon/finder.png',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "JobGo",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff3e80ff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Transform.scale(
              scale: 4,
              child: const CupertinoActivityIndicator(color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}


