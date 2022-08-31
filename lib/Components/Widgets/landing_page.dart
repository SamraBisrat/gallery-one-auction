import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Components/Controllers/LandingPageController.dart';
import 'package:gallery_one_auction/Components/Pages/auction_page.dart';
import 'package:gallery_one_auction/Components/Pages/login_page.dart';
import 'package:gallery_one_auction/Components/Pages/profile_page.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            bottomNavigationBar:
                buildBottomNavigationMenu(context, landingPageController),
            body: Obx(
              (() => IndexedStack(
                    index: landingPageController.tabIndex.value,
                    children: [Auction(), Login(), Profile()],
                  )),
            )));
  }

  buildBottomNavigationMenu(
    context,
    LandingPageController landingPageController,
  ) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: DotNavigationBar(
          onTap: landingPageController.changeTabIndex,
          currentIndex: landingPageController.tabIndex.value,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            DotNavigationBarItem(
                icon: Icon(Icons.home), selectedColor: Colors.black),
            DotNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                ),
                selectedColor: Colors.black),
            DotNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                selectedColor: Colors.black)
          ],
        )));
  }
}
