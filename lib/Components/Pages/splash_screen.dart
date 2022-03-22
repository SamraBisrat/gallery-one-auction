import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Center(
        child: SpinKitRotatingPlain(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
