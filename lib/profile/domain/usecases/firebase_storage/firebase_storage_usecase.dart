import 'dart:io';

abstract class FirebaseStorageUseCase {
  Future<String> uploadFile(String path, File file);
  Future<String> downloadFile(String path);
  Future<String> deleteFile(String path, String fileName);
  Future<String> updateFile(String path, String fileName, String filePath);
}
