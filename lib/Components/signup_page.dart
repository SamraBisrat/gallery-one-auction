import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Components/auction_page.dart';
import 'package:gallery_one_auction/Components/login_page.dart';
import 'dart:io';

import 'package:gallery_one_auction/Theme/app_theme.dart';
import 'package:image_picker/image_picker.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover)),
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text("Gallery One",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "SourceSansPro",
                fontWeight: FontWeight.w900,
                fontSize: 60,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        CircleAvatar(
          radius: 75.0,

          // child: ClipOval(
          //     child: imageUrl != null
          //         ? Image.file(
          //             imageUrl!,
          //           )
          //         : Image.asset("assets/images/placeholder.png")),
          child: ClipOval(
              child: _image != null
                  ? Image.file(_image)
                  : Image.asset("assets/images/placeholder.jpg")),
        ),
        const SizedBox(height: 15),
        GestureDetector(
          child: const Text(
            "Add profile picture",
            style: TextStyle(
                color: Colors.white, decoration: TextDecoration.underline),
          ),
          onTap: () {
            _openImagePicker();
          },
        ),
        const SizedBox(height: 15),
        Container(
          height: height / 1.8,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                userInput(nameController, "Name", TextInputType.name),
                userInput(emailController, "Email", TextInputType.emailAddress),
                userInput(passwordController, "Password",
                    TextInputType.visiblePassword),
                userInput(confirmpassController, "Confirm Password",
                    TextInputType.visiblePassword),
                SizedBox(
                  height: 50,
                  width: width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Auction()));
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'SourceSansPro'),
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppTheme.primaryColor),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text('Login'),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              AppTheme.lightBlue)),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    ));
  }

  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white30,
        border: Border.all(color: Color.fromARGB(255, 196, 193, 193)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: TextField(
          controller: userInput,
          decoration: InputDecoration(
            hintText: hintTitle,
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
