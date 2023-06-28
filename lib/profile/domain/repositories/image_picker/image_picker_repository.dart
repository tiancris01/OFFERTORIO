import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImagePickerRepository {
  Future<XFile?> pickImageFromGallery(BuildContext context);
  Future<XFile?> pickImageFromCamera(BuildContext context);
}
