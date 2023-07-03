import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

abstract class FirebaseStorageUseCase {
  Future<String> uploadFile(String path, File file);
  Future<String> downloadFile(UploadTask task);
  Future<String> deleteFile(String path, String fileName);
  Future<String> updateFile(String path, String fileName, String filePath);
}
