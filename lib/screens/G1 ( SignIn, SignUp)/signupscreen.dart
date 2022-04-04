import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController newEmailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  bool remember = false;
  bool _isObscure = true;

  bool newEmailValidate = false;
  bool newPasswordValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          alignment: Alignment(0,-1.2),
          children: [
            Image.asset('assets/image/logoBg.png'),
            Transform.scale(
              scale: 0.5,
              child: Image.asset('assets/image/logoBg.png'),
            ),
            Align(
              alignment: Alignment(0,5),
              child: Transform.scale(
                scale: 1.2,
                child: Image.asset('assets/image/logoBg.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 0),
                Transform.scale(
                  scale: 0.8,
                  child: Container(
                    child: Column(
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
                  ),
                ),
                const SizedBox(height: 0),
                const Text(
                  "Sign up for free",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: TextField(
                      controller: newEmailController,
                      onChanged: (val) {
                        setState(() {
                          newEmailController.text.isEmpty
                              ? newEmailValidate = true
                              : newEmailValidate = false;
                          newPasswordController.text.isEmpty
                              ? newPasswordValidate = true
                              : newPasswordValidate = false;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        errorText: newEmailValidate ? 'Enter Email' : null,
                        hintText: 'Email',
                        suffixIcon: const Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: TextField(
                      controller: newPasswordController,
                      obscureText: _isObscure,
                      onChanged: (val) {
                        setState(() {
                          newEmailController.text.isEmpty
                              ? newEmailValidate = true
                              : newEmailValidate = false;
                          newPasswordController.text.isEmpty
                              ? newPasswordValidate = true
                              : newPasswordValidate = false;
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.yellowAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        errorText: newPasswordValidate ? 'Enter Password' : null,
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 0.95,
                        child: Checkbox(
                          side: const BorderSide(color: Colors.blue),
                          value: remember,
                          onChanged: (val) {
                            setState(() {
                              remember = val!;
                            });
                          },
                        ),
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      newEmailController.text.isEmpty
                          ? newEmailValidate = true
                          : newEmailValidate = false;
                      newPasswordController.text.isEmpty
                          ? newPasswordValidate = true
                          : newPasswordValidate = false;
                      if (newEmailValidate == false) {
                        if (newPasswordValidate == false) {
                          Navigator.of(context).pushNamed('congratulationPage');
                        }
                      }
                    });
                  },
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 125),
                    child: Text(
                      "Sign in",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
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
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot the password?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "or continue with",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, right: 0, bottom: 10),
                          child: Image.asset('assets/icon/facebook (1).png',
                              width: 35),
                        ),
                        label: const Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, right: 0, bottom: 10),
                          child:
                          Image.asset('assets/icon/google.png', width: 35),
                        ),
                        label: const Text(
                          'Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('signInPage');
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
