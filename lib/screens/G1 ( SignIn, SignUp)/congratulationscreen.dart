import 'package:flutter/material.dart';

class CongratulationPage extends StatefulWidget {
  const CongratulationPage({Key? key}) : super(key: key);

  @override
  _CongratulationPageState createState() => _CongratulationPageState();
}

class _CongratulationPageState extends State<CongratulationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Transform.scale(
              scale: 0.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/image/logoBg.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.37,
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
            ),
            const Text(
              "Congrats!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.blue),
            ),
            const SizedBox(height: 25),
            const Text(
              "Your account is ready to use",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,color: Colors.black),
            ),
            const SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('profilePage');
                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 115),
                child: Text("Continue",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
