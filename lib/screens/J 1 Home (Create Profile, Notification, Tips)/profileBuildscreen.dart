import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileBuilderPage extends StatefulWidget {
  const ProfileBuilderPage({Key? key}) : super(key: key);

  @override
  _ProfileBuilderPageState createState() => _ProfileBuilderPageState();
}

class _ProfileBuilderPageState extends State<ProfileBuilderPage> {
  TextEditingController profileFullNameController = TextEditingController();
  TextEditingController profileEmailController = TextEditingController();
  TextEditingController profileDOBController = TextEditingController();
  TextEditingController profileAddController = TextEditingController();
  TextEditingController profileOccupationController = TextEditingController();

  bool pNameValidate = false;
  bool pEmailValidate = false;
  bool pDOBValidate = false;
  bool pAddValidate = false;
  bool pOccupationValidate = false;

  final ImagePicker _picker = ImagePicker();
  File? image;

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
                        "Profile",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () async {
                      XFile? xfile =
                          await _picker.pickImage(source: ImageSource.gallery);
                      String path = xfile!.path;
                      File file = File(path);
                      setState(() {
                        image = file;
                      });
                    },
                    child: Container(
                      height: (image == null) ? 130 : 160,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
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
                          SizedBox(height: (image == null) ? 30 : 50),
                          Transform.scale(
                            scale: (image == null) ? 1.7 : 2.8,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              backgroundImage:
                                  (image != null) ? FileImage(image!) : null,
                              child:  (image == null) ? Image.asset(
                                  'assets/icon/cloud-computing.png',
                                  scale: 3.5,
                                  color: const Color(0xff3e80ff)) : Container(),
                            ),
                          ),
                          SizedBox(height: (image == null) ? 30 : 50),
                          const Text(
                            'Upload Photo Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Divider(color: Colors.grey.shade300, thickness: 1),
                  const SizedBox(height: 20),
                  textField(
                    title: 'Full Name',
                    controller: profileFullNameController,
                    validate: pNameValidate,
                  ),
                  const SizedBox(height: 20),
                  textField(
                    title: 'Email',
                    controller: profileEmailController,
                    validate: pEmailValidate,
                  ),
                  const SizedBox(height: 20),
                  textField(
                    title: 'Date of birth',
                    controller: profileDOBController,
                    validate: pDOBValidate,
                  ),
                  const SizedBox(height: 20),
                  textField(
                    title: 'Address',
                    controller: profileAddController,
                    validate: pAddValidate,
                  ),
                  const SizedBox(height: 20),
                  textField(
                    title: 'Occupation',
                    controller: profileOccupationController,
                    validate: pOccupationValidate,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 80,
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
                  profileFullNameController.text.isEmpty
                      ? pNameValidate = true
                      : pNameValidate = false;
                  profileEmailController.text.isEmpty
                      ? pEmailValidate = true
                      : pNameValidate = false;
                  profileDOBController.text.isEmpty
                      ? pDOBValidate = true
                      : pDOBValidate = false;
                  profileAddController.text.isEmpty
                      ? pAddValidate = true
                      : pAddValidate = false;
                  profileOccupationController.text.isEmpty
                      ? pOccupationValidate = true
                      : pOccupationValidate = false;
                  if (pNameValidate == false &&
                      pEmailValidate == false &&
                      pDOBValidate == false &&
                      pAddValidate == false &&
                      pOccupationValidate == false) {
                    Navigator.of(context).pushNamed('MainHomeScreen');
                  }
                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 115),
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    (pNameValidate == false &&
                            pEmailValidate == false &&
                            pDOBValidate == false &&
                            pAddValidate == false &&
                            pOccupationValidate == false)
                        ? const Color(0xff3e80ff)
                        : const Color(0xff3e80ff).withOpacity(0.5)),
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

  Widget textField(
      {required String title,
      required TextEditingController controller,
      required bool validate}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: TextField(
              controller: controller,
              onChanged: (val) {
                setState(() {
                  profileFullNameController.text.isEmpty
                      ? pNameValidate = true
                      : pNameValidate = false;
                  profileEmailController.text.isEmpty
                      ? pEmailValidate = true
                      : pEmailValidate = false;
                  profileDOBController.text.isEmpty
                      ? pDOBValidate = true
                      : pDOBValidate = false;
                  profileAddController.text.isEmpty
                      ? pAddValidate = true
                      : pAddValidate = false;
                  profileOccupationController.text.isEmpty
                      ? pOccupationValidate = true
                      : pOccupationValidate = false;
                });
              },
              keyboardType: (title == 'Date of birth')
                  ? TextInputType.datetime
                  : TextInputType.text,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.0),
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
                errorText: validate ? 'Enter $title' : null,
                hintText: (title == 'Date of birth') ? 'DD/MM/YYY' : title,
                suffixIcon: (title == 'Email')
                    ? const Icon(Icons.email)
                    : (title == 'Date of birth')
                        ? const Icon(Icons.calendar_today)
                        : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
