import 'package:gallery_one_auction/Components/Pages/signup_page.dart';
import 'package:gallery_one_auction/Components/Routes/routes.dart';
import 'package:gallery_one_auction/Components/Widgets/landing_page.dart';
import 'package:get/route_manager.dart';

import '../Pages/login_page.dart';

abstract class Pages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => Login()),
    GetPage(name: Routes.SIGNUP, page: () => Signup()),
    GetPage(name: Routes.LANDINGPAGE, page: () => LandingPage()),
  ];
}
