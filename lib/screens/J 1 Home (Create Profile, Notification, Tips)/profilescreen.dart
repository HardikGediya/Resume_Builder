import 'dart:developer';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Expanded(
            flex:9,
            child: Transform.scale(
              scale: 0.9,
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
          ),
          const SizedBox(height: 25),
          Expanded(
            flex:8,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration:  BoxDecoration(
                  color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400.withOpacity(0.6),
                        blurRadius: 15,
                        spreadRadius: 0,
                        offset: const Offset(0,1.5),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 8,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                      color: const Color(0xff3e80ff),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Transform.scale(scale: 0.7,child: Image.asset('assets/icon/user.png')),
                    ),
                    const SizedBox(height: 30),
                    const Text("What are you looking for?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap : (){
                              log("Hello");
                              Navigator.of(context).pushNamed('wantJobPage');
                            },
                            child: Container(
                              height: 125,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(color: const Color(0xff3e80ff)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                    offset: const Offset(0,0),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 30),
                                  Transform.scale(
                                    scale: 1.7,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.shade200,
                                      child: Image.asset('assets/icon/reading-book.png',scale: 25),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("I want a job",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 125,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400.withOpacity(0.3),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  offset: const Offset(0,0),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 30),
                                Transform.scale(
                                  scale: 1.7,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade200,
                                    child: Image.asset('assets/icon/user.png',scale: 25,color: const Color(0xff3e80ff)),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                const Text("I want an employee",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
