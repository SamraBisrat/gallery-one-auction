import 'dart:html';

import 'package:gallery_one_auction/Core/Enums/enums.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class MainRepository extends GetxService {
  Future<String> uploadFile(File _image, UploadTo uploadFor);
}
