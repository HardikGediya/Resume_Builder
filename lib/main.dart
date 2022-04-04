import 'package:flutter/material.dart';
import 'package:ios_login/screens/F SplashScreen/confirmationscreen.dart';
import 'package:ios_login/screens/G1%20(%20SignIn,%20SignUp)/congratulationscreen.dart';
import 'package:ios_login/screens/J%201%20Home%20(Create%20Profile,%20Notification,%20Tips)/homescreen.dart';
import 'package:ios_login/screens/J%201%20Home%20(Create%20Profile,%20Notification,%20Tips)/profileBuildscreen.dart';
import 'package:ios_login/screens/J%201%20Home%20(Create%20Profile,%20Notification,%20Tips)/profilescreen.dart';
import 'package:ios_login/screens/G1%20(%20SignIn,%20SignUp)/signinscreen.dart';
import 'package:ios_login/screens/G1%20(%20SignIn,%20SignUp)/signupscreen.dart';
import 'package:ios_login/screens/F SplashScreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ios_login/screens/J%201%20Home%20(Create%20Profile,%20Notification,%20Tips)/wantjobscreen.dart';
import 'package:ios_login/screens/mainHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.kumbhSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: 'homePage',
      routes: {
        '/': (context) => const SplashPage(),
        'confirmationPage': (context) => const ConfirmationPage(),
        'signInPage': (context) => const SignInPage(),
        'signUpPage': (context) => const SignUpPage(),
        'congratulationPage': (context) => const CongratulationPage(),
        'profilePage': (context) => const ProfilePage(),
        'wantJobPage': (context) => const WantJobPage(),
        'profileBuildPage': (context) => const ProfileBuilderPage(),
        'MainHomeScreen': (context) => const MainHomeScreen(),
        'homePage': (context) => const HomePage(),
      },
    );
  }
}
