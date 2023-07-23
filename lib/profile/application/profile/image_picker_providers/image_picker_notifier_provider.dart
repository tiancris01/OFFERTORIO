// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/application/profile/image_picker_providers/image_picker_state/image_picker_state.dart';
import 'package:offertorio/profile/application/profile_providers.dart';

final imagePickerNotifierProvider =
    StateNotifierProvider<ImagePickerNotifierProvider, ImagePickerSate>(
  (ref) {
    // Use to get images from gallery
    final imagePickerFromGallery =
        ref.watch(imagePickerRepositoryProvider).pickImageFromGallery;
    // Use to get images from camera
    final imagePickerFromCamera =
        ref.watch(imagePickerRepositoryProvider).pickImageFromCamera;

    return ImagePickerNotifierProvider(
      iamagePickerFromCamera: imagePickerFromCamera,
      iamagePickerFromGallery: imagePickerFromGallery,
    );
  },
);

typedef IamagePickerFromGallery = Future<XFile?> Function(BuildContext context);
typedef IamagePickerFromCamera = Future<XFile?> Function(BuildContext context);

class ImagePickerNotifierProvider extends StateNotifier<ImagePickerSate> {
  IamagePickerFromCamera iamagePickerFromCamera;
  IamagePickerFromGallery iamagePickerFromGallery;

  ImagePickerNotifierProvider({
    required this.iamagePickerFromCamera,
    required this.iamagePickerFromGallery,
  }) : super(const ImagePickerSate.initial());

  Future<void> pickImageFromGallery(BuildContext context) async {
    state = const ImagePickerSate.loading();
    try {
      final image = await iamagePickerFromGallery(context);
      if (image != null) {
        state = ImagePickerSate.data(xfile: image);
        // saveImage(image);
      } else {
        // final image = await loadImage();
        state = const ImagePickerSate.error(message: 'Error');
      }
    } catch (e) {
      // final image = await loadImage();
      state = ImagePickerSate.error(message: e.toString());
    }
  }

  Future<void> pickImageFromCamera(BuildContext context) async {
    state = const ImagePickerSate.loading();
    try {
      final image = await iamagePickerFromCamera(context);
      if (image != null) {
        state = ImagePickerSate.data(xfile: image);
        // saveImage(image);
      } else {
        // final image = await loadImage();
        state = const ImagePickerSate.error(message: 'Error');
      }
    } catch (e) {
      // final image = await loadImage();
      state = ImagePickerSate.error(message: e.toString());
    }
  }

  // Use this method to save image in local storage and persist it
  /* Future<void> saveImage(XFile image) async {
    final String path = (await getTemporaryDirectory()).path;
    File file = File(image.path);
    const String fileName = 'image_picker.jpg';
    await file.copy('$path/$fileName');
  }

  Future<XFile> loadImage() async {
    const String fileName = 'image_picker.jpg';
    final String path = (await getTemporaryDirectory()).path;
    if (File('$path/$fileName').existsSync()) {
      return XFile('$path/$fileName');
    } else {
      return XFile('');
    }
  } */
}
