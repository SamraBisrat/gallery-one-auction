import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Components/Routes/pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Gallery One",
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: '/',
      getPages: Pages.pages,
      theme: ThemeData(
        primaryColor: AppTheme.primaryColor,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppTheme.primaryColor,
            ),
        textTheme: AppTheme.textTheme,
      ),
      defaultTransition: Transition.fade,
    );

    // const MaterialApp(debugShowCheckedModeBanner: false, home: Signup());
  }
}
