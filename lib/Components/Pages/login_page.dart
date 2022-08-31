import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Components/Controllers/auth_controller.dart';
import 'package:gallery_one_auction/Components/Pages/auction_page.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController authController =
        Get.put(AuthController(), permanent: false);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(alignment: AlignmentDirectional.topStart, children: [
      Container(
        height: height / 2,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login.png"),
                fit: BoxFit.cover)),
      ),
      Container(
        width: width,
        height: height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: const Text(
                  "Login",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E2944),
                    fontSize: 40,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      userInput(emailController, "Email",
                          TextInputType.emailAddress, Icon(Icons.email)),
                      userInput(passwordController, "Password",
                          TextInputType.visiblePassword, Icon(Icons.password)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              authController.navigateUser();
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'SourceSansPro'),
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
                              authController.navigateUser();
                            },
                            child: const Text('Signup'),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        AppTheme.primaryColor)),
                          )
                        ],
                      )
                    ]),
              ),
            ]),
      )
    ]));
  }

  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType, Icon icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: TextField(
          controller: userInput,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: icon,
            ),
            hintText: hintTitle,
            border: InputBorder.none,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Color(0xFFACB1C1),
              ),
            ),
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
