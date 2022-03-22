import 'package:gallery_one_auction/Components/Bindings/auth_binding.dart';
import 'package:gallery_one_auction/Components/Pages/splash_screen.dart';
import 'package:gallery_one_auction/Components/Routes/routes.dart';
import 'package:get/route_manager.dart';

abstract class Pages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => SplashScreen(),
        binding: AuthBinding()),
  ];
}
