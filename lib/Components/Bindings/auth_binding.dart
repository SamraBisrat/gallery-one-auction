import 'package:gallery_one_auction/Components/Controllers/auth_controller.dart';
import 'package:get/instance_manager.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
