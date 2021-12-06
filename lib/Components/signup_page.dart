import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Components/auction_page.dart';
import 'package:gallery_one_auction/Components/login_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // final ImagePicker _picker = ImagePicker();
  // File? imageUrl;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Future pickImageFromCamera(BuildContext context) async {
  //   XFile? image = await _picker.pickImage(source: ImageSource.camera);

  //   if (image != null) {
  //     setState(() {
  //       _cropImage(image);
  //     });
  //   }
  //   Navigator.of(context).pop();
  // }

  // Future pickImageFromGallery(BuildContext context) async {
  //   XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  //   if (image != null) {
  //     setState(() {
  //       _cropImage(image);
  //     });
  //   }
  //   Navigator.of(context).pop();
  // }

  // Future<Null> _cropImage(XFile cropped) async {
  //   // var img = Image.file(File(cropped.path));
  //   File? croppedFile = await ImageCropper.cropImage(
  //       sourcePath: cropped.path,
  //       cropStyle: CropStyle.rectangle,
  //       aspectRatioPresets: Platform.isAndroid
  //           ? [
  //               CropAspectRatioPreset.square,
  //             ]
  //           : [
  //               CropAspectRatioPreset.square,
  //             ],
  //       androidUiSettings: const AndroidUiSettings(
  //           toolbarTitle: 'Cropper',
  //           toolbarColor: Color(0xff82B242),
  //           toolbarWidgetColor: Colors.white,
  //           initAspectRatio: CropAspectRatioPreset.square,
  //           lockAspectRatio: true),
  //       iosUiSettings: IOSUiSettings(
  //         title: 'Cropper',
  //       ));
  //   if (croppedFile != null) {
  //     imageUrl = croppedFile;

  //     setState(() {
  //       imageUrl = croppedFile;
  //     });
  //   }
  // }

  // Future<void> _showSelectionDialog(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //             title: Text("Add profile image"),
  //             content: SingleChildScrollView(
  //               child: ListBody(
  //                 children: <Widget>[
  //                   GestureDetector(
  //                     child: Text("Use photo in library"),
  //                     onTap: () {
  //                       pickImageFromGallery(context);
  //                     },
  //                   ),
  //                   Padding(padding: EdgeInsets.all(8.0)),
  //                   GestureDetector(
  //                     child: Text("Take a new picture"),
  //                     onTap: () {
  //                       pickImageFromCamera(context);
  //                     },
  //                   )
  //                 ],
  //               ),
  //             ));
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 75.0,
              // child: ClipOval(
              //     child: imageUrl != null
              //         ? Image.file(
              //             imageUrl!,
              //           )
              //         : Image.asset("assets/images/placeholder.png")),
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "assets/images/placeholder.png",
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              child: const Text(
                "Add profile picture",
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline),
              ),
              onTap: () {
                // _showSelectionDialog(context);
                // pickImageFromCamera(context);
              },
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(40),
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text("Gallery One Auction",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "SourceSansPro",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                ),
              ),
            ),
            Container(
              height: 75,
              padding: const EdgeInsets.all(10),
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
                        const Color(0xFF515fd9)),
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
                          const Color(0xFF515fd9))),
                )
              ],
            )
          ],
        ),
      )
    ]));
  }
}
