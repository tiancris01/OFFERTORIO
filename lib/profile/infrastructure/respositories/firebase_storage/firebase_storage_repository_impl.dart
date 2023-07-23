// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:offertorio/profile/domain/repositories/Firebase_storage/firestorage_repository.dart';
import 'package:offertorio/profile/domain/usecases/firebase_storage/firebase_storage_usecase.dart';

class FirebaseStorageRepositoryImpl implements FirebaseStorageRepository {
  final FirebaseStorageUseCase _firebaseStorageUseCase;

  FirebaseStorageRepositoryImpl({
    required FirebaseStorageUseCase firebaseStorageUseCase,
  }) : _firebaseStorageUseCase = firebaseStorageUseCase;

  @override
  Future<String> uploadFile(String path, File file) async {
    return await _firebaseStorageUseCase.uploadFile(path, file);
  }

  @override
  Future<String> downloadFile(String path) async {
    return await _firebaseStorageUseCase.downloadFile(path);
  }

  @override
  Future<String> updateFile(String path, String fileName, String filePath) {
    // TODO: implement updateFile
    throw UnimplementedError();
  }

  @override
  Future<String> deleteFile(String path, String fileName) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }
}
