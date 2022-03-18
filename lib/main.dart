import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Components/auction_page.dart';
import 'package:gallery_one_auction/Components/item_detail_page.dart';
import 'package:gallery_one_auction/Components/login_page.dart';
import 'package:gallery_one_auction/Components/profile_page.dart';
import 'package:gallery_one_auction/Components/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  
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
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Signup());
  }
  
  
}
