// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:offertorio/profile/core/failures/profile_failures.dart';
import 'package:offertorio/profile/domain/repositories/profile/profile_repository.dart';
import 'package:offertorio/profile/domain/usecases/profile/profile_usecase.dart';
import 'package:offertorio/profile/infrastructure/models/user_dto/user_dto.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileUseCase _profileDataSource;

  ProfileRepositoryImpl({
    required ProfileUseCase profileDataSource,
  }) : _profileDataSource = profileDataSource;

  @override
  Future<Either<ProfileFailure, Unit?>> createProfileFRDB(
      UserDTO user, String uid) async {
    return await _profileDataSource.createProfileFRDB(user, uid);
  }

  @override
  Future<Either<ProfileFailure, XFile?>> pickImage(ImageSource source) async {
    return await _profileDataSource.pickImage(source);
  }

  @override
  Future<Either<ProfileFailure, String?>> uploadFileToFS(
      BuildContext context, String uid, XFile? xfile) async {
    return await _profileDataSource.uploadFileToFS(context, uid, xfile);
  }
}
