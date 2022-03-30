import 'dart:io';

import 'package:gallery_one_auction/Core/Adapters/main_adapter.dart';
import 'package:gallery_one_auction/Core/Enums/enums.dart';
import 'package:gallery_one_auction/Core/Services/media_services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker_platform_interface/src/types/image_source.dart';

class MainRepository extends GetxService implements MainAdapter {
  final MediaServices mediaServices;
  MainRepository({required this.mediaServices});

  @override
  Future<String> uploadFile(File _image, UploadTo uploadTo) async {
    return await mediaServices.uploadFile(_image, uploadTo);
  }

  @override
  Future<File?> getCroppedImage(File imageFile) {
    return mediaServices.getCroppedImage(imageFile);
  }

  @override
  Future<File> getMedia(ImageSource imageSource, String mediaType) {
    return mediaServices.openImagePicker(imageSource, mediaType);
  }
}
