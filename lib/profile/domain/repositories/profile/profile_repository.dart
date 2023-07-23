import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/core/failures/profile_failures.dart';
import 'package:offertorio/profile/infrastructure/models/user_dto/user_dto.dart';

abstract class ProfileRepository {
  Future<Either<ProfileFailure, XFile?>> pickImage(ImageSource source);

  Future<Either<ProfileFailure, String?>> uploadFileToFS(
      BuildContext context, String uid, XFile? xfile);
  Future<Either<ProfileFailure, Unit?>> createProfileFRDB(
      UserDTO user, String uid);
}
