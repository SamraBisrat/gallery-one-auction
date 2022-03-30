import 'dart:io';

import 'package:gallery_one_auction/Core/Enums/enums.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

abstract class MainAdapter extends GetxService {
  Future<File> getMedia(ImageSource imageSource, String mediaType);
  Future<File?> getCroppedImage(File imageFile);
  Future<String> uploadFile(File _image, UploadTo uploadFor);
}
