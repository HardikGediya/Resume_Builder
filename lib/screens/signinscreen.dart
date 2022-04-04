import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool remember = false;
  bool _isObscure = true;

  bool emailValidate = false;
  bool passwordValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Stack(
              alignment: const Alignment(0, 0.66),
              children: [
                Transform.scale(
                  scale: 1,
                  child: Image.asset('assets/image/MainLogo.png'),
                ),
                const Text(
                  "JobGo",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3e80ff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Sign in to your account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 25),
            Column(
              children: [
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
                      controller: emailController,
                      onChanged: (val) {
                        setState(() {
                          emailController.text.isEmpty
                              ? emailValidate = true
                              : emailValidate = false;
                          passwordController.text.isEmpty
                              ? passwordValidate = true
                              : passwordValidate = false;
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
                        errorText: emailValidate ? 'Enter Email' : null,
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
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade200, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          controller: passwordController,
                          obscureText: _isObscure,
                          onChanged: (val) {
                            setState(() {
                              emailController.text.isEmpty
                                  ? emailValidate = true
                                  : emailValidate = false;
                              passwordController.text.isEmpty
                                  ? passwordValidate = true
                                  : passwordValidate = false;
                            });
                          },
                          decoration: InputDecoration(
                            errorText:
                                passwordValidate ? 'Enter Password' : null,
                            border: InputBorder.none,
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
                      emailController.text.isEmpty
                          ? emailValidate = true
                          : emailValidate = false;
                      passwordController.text.isEmpty
                          ? passwordValidate = true
                          : passwordValidate = false;
                      if (emailValidate == false) {
                        if (passwordValidate == false) {
                          Navigator.of(context).pushNamed('homePage');
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
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
