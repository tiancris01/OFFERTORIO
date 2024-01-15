import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/app_core/utils/snackbar/show_snackbar.dart';
import 'package:offertorio/profile/domain/usecases/image_picker/image_picker_usecase.dart';

class ImagePickerDataSource implements ImagePickerUsecase {
  @override
  Future<XFile?> pickImageFromGallery(BuildContext context) async {
    try {
      final XFile? pickedFile = await ImagePicker().pickImage(
        maxHeight: 800,
        maxWidth: 800,
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        return XFile(pickedFile.path);
      } else {
        showSnackbar(context, 'Error');
        return null;
      }
    } catch (e) {
      showSnackbar(context, e.toString());
      return null;
    }
  }

  @override
  Future<XFile?> pickImageFromCamera(BuildContext context) async {
    try {
      final XFile? pickedFile = await ImagePicker().pickImage(
        maxHeight: 800,
        maxWidth: 800,
        source: ImageSource.camera,
      );
      if (pickedFile != null) {
        return XFile(pickedFile.path);
      } else {
        showSnackbar(context, 'Error');
        return null;
      }
    } catch (e) {
      showSnackbar(context, e.toString());
      return null;
    }
  }
}
