import 'package:gallery_one_auction/Components/Routes/routes.dart';
import 'package:gallery_one_auction/Core/Repository/respository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthController extends GetxController {
  void navigateUser() async {
    Get.toNamed(Routes.LANDINGPAGE);
  }
}
