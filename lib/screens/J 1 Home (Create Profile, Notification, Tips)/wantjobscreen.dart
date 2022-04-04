import 'package:flutter/material.dart';

class WantJobPage extends StatefulWidget {
  const WantJobPage({Key? key}) : super(key: key);

  @override
  _WantJobPageState createState() => _WantJobPageState();
}

class _WantJobPageState extends State<WantJobPage> {
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool select5 = false;
  bool select6 = false;
  bool select7 = false;
  bool select8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: const Alignment(0, 0.9),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey.shade200.withOpacity(0.6),
                          ),
                          child: const Icon(Icons.arrow_back_ios_rounded,
                              color: Colors.blue),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "What job you want?",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Choose 3-5 job categories and well's optimize the job vacancy for you.",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            select1 = !select1;
                          });
                        },
                        child: categories(
                          title: 'Content Writer',
                          img: 'pencil.png',
                          S: select1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            select2 = !select2;
                          });
                        },
                        child: categories(
                          title: 'Art & Design',
                          img: 'fill.png',
                          S: select2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            select3 = !select3;
                          });
                        },
                        child: categories(
                            title: 'Human Resource',
                            img: 'user-group.png',
                            S: select3),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            select4 = !select4;
                          });
                        },
                        child: categories(
                          title: 'Programmer',
                          img: 'custom-coding.png',
                          S: select4,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            select5 = !select5;
                          });
                        },
                        child: categories(
                            title: 'Finance', img: 'suitcase.png', S: select5),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            select6 = !select6;
                          });
                        },
                        child: categories(
                            title: 'Customer Service',
                            img: 'support.png',
                            S: select6),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            select7 = !select7;
                          });
                        },
                        child: categories(
                            title: 'Food & Restaurant',
                            img: 'restaurant.png',
                            S: select7),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            select8 = !select8;
                          });
                        },
                        child: categories(
                            title: 'Music Producer',
                            img: 'music.png',
                            S: select8),
                      ),
                    ],
                  ),
                  Container(
                    height: 90,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if(select1 == false && select2 == false && select3 == false && select4 == false && select5 == false && select6 == false && select7 == false && select8 == false)
                    {
                      const snackBar = SnackBar(
                        content: Text('Select at list One Categories..'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  else
                    {
                      Navigator.of(context).pushNamed('profileBuildPage');
                    }

                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 130),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget categories(
      {required String title, required String img, required bool S}) {
    return Container(
      height: 140,
      width: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
            color: (S == true) ? Colors.blue : Colors.white, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 35),
          Transform.scale(
            scale: 1.7,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Image.asset('assets/icon/$img',
                  scale: 3.5, color: const Color(0xff3e80ff)),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
