import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_login/models/jobGo_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  bool isSelect1 = true;
  bool isSelect2 = false;
  bool isSelect3 = false;
  bool isSelect4 = false;
  bool isSelect5 = false;

  int index = 0;

  List<Noti> notification = <Noti>[
    Noti(
        title: 'Your application to Apple Company has been read',
        img: 'check.png',
        prise: '17.00'),
    Noti(
      title: 'New job available !',
      img: 'check.png',
      prise: '16.00',
    ),
    Noti(
        title: 'New company has been joined (NEW)',
        img: 'star.png',
        prise: '15.00'),
    Noti(
        title: 'Congratulations, your application on Google has been accepted',
        img: 'microsoft.png',
        prise: '14.00'),
    Noti(
        title: 'New company has been joined (NEW)',
        img: 'apple-logo.png',
        prise: '13.00'),
  ];

  List<tipsforyou> Tips = <tipsforyou>[
    tipsforyou(
      title: 'How to find a perfect job for you',
      img: 'JOB1.png',
      buttonColor: Colors.orangeAccent,
      shadowColor: Colors.lightBlueAccent.withOpacity(0.8),
      bgColor1: Colors.lightBlueAccent,
      bgColor2: Colors.blue,
    ),
    tipsforyou(
      title: 'How to build the strong profile',
      img: 'JOB2.png',
      buttonColor: Colors.blue,
      shadowColor: Colors.orangeAccent.withOpacity(0.8),
      bgColor1: Colors.orangeAccent,
      bgColor2: Colors.orange,
    ),
    tipsforyou(
      title: 'Top 10 most searched skills',
      img: 'JOB3.png',
      buttonColor: Colors.orange,
      shadowColor: Colors.redAccent.withOpacity(0.8),
      bgColor1: Colors.redAccent,
      bgColor2: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: index,
        children: [
          homePage(),
          notificationPage(),
          tipsForYou(),
        ],
      ),
    );
  }

  Widget homePage() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
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
                      color: const Color(0xff3e80ff),
                    ),
                    child: Image.asset(
                      'assets/icon/finder.png',
                      scale: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  "Hello, Adam !",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 120),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.shade200,
                    ),
                    child: Image.asset(
                      'assets/icon/notification.png',
                      scale: 2.65,
                      color: const Color(0xff3e80ff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.77,
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade50,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1.0),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: 'Search',
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.shade200,
                    ),
                    child: Image.asset(
                      'assets/icon/filter.png',
                      scale: 3.3,
                      color: const Color(0xff3e80ff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tips for you',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff3e80ff)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          tips(),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Job Recommendation',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff3e80ff)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelect1 = !isSelect1;
                        isSelect2 = false;
                        isSelect3 = false;
                        isSelect4 = false;
                        isSelect5 = false;
                      });
                    },
                    child: jobCategories(title: 'All Job', isSelect: isSelect1),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelect2 = !isSelect2;
                        isSelect1 = false;
                        isSelect3 = false;
                        isSelect4 = false;
                        isSelect5 = false;
                      });
                    },
                    child: jobCategories(title: 'Writer', isSelect: isSelect2),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelect3 = !isSelect3;
                        isSelect2 = false;
                        isSelect1 = false;
                        isSelect4 = false;
                        isSelect5 = false;
                      });
                    },
                    child: jobCategories(title: 'Design', isSelect: isSelect3),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelect4 = !isSelect4;
                        isSelect2 = false;
                        isSelect3 = false;
                        isSelect1 = false;
                        isSelect5 = false;
                      });
                    },
                    child: jobCategories(title: 'Finance', isSelect: isSelect4),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelect5 = !isSelect5;
                        isSelect2 = false;
                        isSelect3 = false;
                        isSelect4 = false;
                        isSelect1 = false;
                      });
                    },
                    child: jobCategories(title: 'Product', isSelect: isSelect5),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          jobs(
            title: 'UI/UX Designer',
            subtitle: 'AirBNB',
            state: 'United State - Full Time',
            prise: '\$2.350',
            img: 'airbnb.png',
            bgColor: const Color(0xfff23557),
            isBookMarks: false,
          ),
          const SizedBox(height: 20),
          jobs(
            title: 'Financial Planner',
            subtitle: 'Twitter',
            state: 'United Kingdom - Part Time',
            prise: '\$2.200',
            img: 'airbnb.png',
            bgColor: Colors.blue,
            isBookMarks: false,
          ),
        ],
      ),
    );
  }

  Widget notificationPage() {
    return Column(
      children: [
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
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
                "Notification",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.74,
          child: ListView.separated(
            separatorBuilder: (context, i) {
              return const SizedBox(height: 30);
            },
            physics: const BouncingScrollPhysics(),
            itemCount: notification.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade100,
                        blurRadius: 50,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/image/${notification[i].img}',
                                scale: 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      '${notification[i].title}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    '${notification[i].prise}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget tipsForYou() {
    return Column(
      children: [
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
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
                "Tips for you",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.74,
          child: ListView.separated(
            separatorBuilder: (context, i) {
              return const SizedBox(height: 30);
            },
            physics: const BouncingScrollPhysics(),
            itemCount: Tips.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 15),
                          color: Tips[i].shadowColor as Color,
                          blurRadius: 30,
                          spreadRadius: 0,
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Tips[i].bgColor1 as Color,
                          Tips[i].bgColor2 as Color,
                        ],
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 150,
                              child: Text('${Tips[i].title}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20)),
                            ),
                            const SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Read more',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Tips[i].buttonColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Transform.scale(
                          scale: 1,
                          child: Image.asset(
                            'assets/image/${Tips[i].img}',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget tips() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 15),
                color: Colors.lightBlueAccent.withOpacity(0.8),
                blurRadius: 30,
                spreadRadius: 0,
              ),
            ],
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.lightBlueAccent,
                Colors.blue,
              ],
            )),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const SizedBox(
                    width: 150,
                    child: Text('How to find a perfect job for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20)),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Read more',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orangeAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Transform.scale(
                scale: 1,
                child: Image.asset(
                  'assets/image/JOB1.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget jobCategories({required String title, required bool isSelect}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff3e80ff), width: 2),
        borderRadius: BorderRadius.circular(50),
        color: (isSelect == true) ? const Color(0xff3e80ff) : Colors.white,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: (isSelect == true) ? Colors.white : const Color(0xff3e80ff),
          ),
        ),
      ),
    );
  }

  Widget jobs(
      {required Color bgColor,
      required String title,
      required String subtitle,
      required String prise,
      required String state,
      required String img,
      required bool isBookMarks}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 50,
            ),
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/image/$img',
                      color: Colors.white,
                      scale: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        Text(
                          state,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          isBookMarks = !isBookMarks;
                        });
                      },
                      child: Image.asset(
                        (isBookMarks == false)
                            ? 'assets/icon/bookmark.png'
                            : 'assets/icon/ribbon.png',
                        color: const Color(0xff3e80ff),
                        scale: 4,
                      )),
                  Text(
                    prise,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
