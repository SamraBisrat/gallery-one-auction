import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_one_auction/Theme/app_theme.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gallery_one_auction/Core/Enums/enums.dart';
import 'package:path/path.dart' as path;

class MediaServices extends GetxService {
  late final FirebaseStorage storageInstance;
  final _picker = ImagePicker();

  // MediaServices({required this.storageInstance})

  // Implementing the image picker
  Future<File> openImagePicker(
      ImageSource imageSource, String mediaType) async {
    try {
      final pickedFile = await (mediaType == 'image'
          ? _picker.pickImage(source: imageSource)
          : _picker.pickVideo(source: imageSource));
      if (pickedFile != null) {
        return File(pickedFile.path);
      } else {
        return Future.error("Media is not selected");
      }
    } on Exception catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }

  Future<File?> getCroppedImage(File imageFile) async {
    try {
      return await ImageCropper().cropImage(
          sourcePath: imageFile.path,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          androidUiSettings: const AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: AppTheme.primaryColor,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 1.0,
          ));
    } on Exception catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }

  Future<String> uploadFile(File _image, UploadTo uploadTo) async {
    try {
      Reference storageReference = storageInstance
          .ref()
          .child('${describeEnum(uploadTo)}/${path.basename(_image.path)}');
      UploadTask uploadTask = storageReference.putFile(_image);

      await uploadTask.whenComplete(() => null);
      print('File Uploaded');
      String returnURL = '';
      await storageReference.getDownloadURL().then((fileURL) {
        returnURL = fileURL;
      });
      return returnURL;
    } catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }
}
