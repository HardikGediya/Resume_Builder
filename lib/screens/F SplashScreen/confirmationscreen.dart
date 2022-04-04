import 'package:flutter/material.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Stack(
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
            const SizedBox(height: 100),
            const Text(
              "The best portal job of this century",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('signInPage');
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
