import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/core/failures/profile_failures.dart';
import 'package:offertorio/profile/infrastructure/models/user_dto/user_dto.dart';

abstract class ProfileUseCase {
  Future<Either<ProfileFailure, XFile?>> pickImage(ImageSource source);
  Future<Either<ProfileFailure, String?>> uploadFileToFS(
      String uid, XFile? xfile);
  Future<Either<ProfileFailure, Unit?>> createProfileFRDB(UserDTO user);
  Future<Either<ProfileFailure, bool>> dataBaseUserExist(String uid);
}
