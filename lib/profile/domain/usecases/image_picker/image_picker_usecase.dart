import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImagePickerUsecase {
  Future<XFile?> pickImageFromGallery(BuildContext context);
  Future<XFile?> pickImageFromCamera(BuildContext context);
}
