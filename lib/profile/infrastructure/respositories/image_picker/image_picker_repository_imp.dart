// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:offertorio/profile/domain/repositories/image_picker/image_picker_repository.dart';
import 'package:offertorio/profile/domain/usecases/image_picker/image_picker_usecase.dart';

class ImagePickerRepositoryImpl extends ImagePickerRepository {
  final ImagePickerUsecase imagePickerUseCase;

  ImagePickerRepositoryImpl({required this.imagePickerUseCase});

  @override
  Future<XFile?> pickImageFromCamera(BuildContext context) async {
    return await imagePickerUseCase.pickImageFromCamera(context);
  }

  @override
  Future<XFile?> pickImageFromGallery(BuildContext context) async {
    return await imagePickerUseCase.pickImageFromGallery(context);
  }
}
