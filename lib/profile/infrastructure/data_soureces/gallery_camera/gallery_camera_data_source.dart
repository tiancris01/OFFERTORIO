import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/app_core/utils/snackbar/show_snackbar.dart';

Future<XFile?> pickImageFromGallery(BuildContext context) async {
  try {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      return XFile(pickedFile.path);
    } else {
      return null;
    }
  } catch (e) {
    showSnackbar(context, e.toString());
    return null;
  }
}
