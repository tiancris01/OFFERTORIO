import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:offertorio/profile/core/failures/profile_failures.dart';
import 'package:offertorio/profile/domain/usecases/profile/profile_usecase.dart';
import 'package:offertorio/profile/infrastructure/models/user_dto/user_dto.dart';

class ProfileServices implements ProfileUseCase {
  final ImagePicker _imagePicker;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFirestore;

  ProfileServices({
    required ImagePicker imagePicker,
    required FirebaseStorage firebaseStorage,
    required FirebaseFirestore firebaseFirestore,
  })  : _imagePicker = imagePicker,
        _firebaseStorage = firebaseStorage,
        _firebaseFirestore = firebaseFirestore;

  @override
  Future<Either<ProfileFailure, XFile?>> pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
        source: source,
      );
      return right(pickedFile);
    } catch (e) {
      return left(
        ProfileFailure.platform(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<ProfileFailure, String?>> uploadFileToFS(
      String uid, XFile? xfile) async {
    try {
      final Reference storageRef = _firebaseStorage.ref();
      final uploadTask = await storageRef
          .child('usersPic/${DateTime.now().millisecondsSinceEpoch}_images.jpg')
          .putFile(File(xfile!.path));
      final urlImage = await uploadTask.ref.getDownloadURL();
      return right(urlImage);
    } on FirebaseException catch (e) {
      return left(
        ProfileFailure.server(
          message: "Faild with error ${e.code} : ${e.message}",
        ),
      );
    }
  }

  @override
  Future<Either<ProfileFailure, Unit?>> createProfileFRDB(UserDTO user) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(user.uid)
          .set(user.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return left(
        ProfileFailure.server(
          message: "Faild with error ${e.code} : ${e.message}",
        ),
      );
    }
  }
}


/* 
initial 
ready
uploading
creatingProfile 
*/
