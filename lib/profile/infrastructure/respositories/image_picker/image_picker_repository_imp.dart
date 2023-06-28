// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cross_file/src/types/interface.dart';
import 'package:flutter/material.dart';

import 'package:offertorio/profile/domain/repositories/image_picker/image_picker_repository.dart';
import 'package:offertorio/profile/domain/usecases/image_picker/image_picker_usecase.dart';

class ImagePickerRepositoryImpl extends ImagePickerRepository {
  final ImagePickerUsecase imagePickerUseCase;
  ImagePickerRepositoryImpl({
    required this.imagePickerUseCase,
  });

  @override
  Future<XFile?> pickImageFromCamera(BuildContext context) {
    // TODO: implement pickImageFromCamera
    throw UnimplementedError();
  }

  @override
  Future<XFile?> pickImageFromGallery(BuildContext context) {
    return imagePickerUseCase.pickImageFromGallery(context);
  }
}
