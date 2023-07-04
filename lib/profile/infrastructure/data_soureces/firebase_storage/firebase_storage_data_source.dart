import 'dart:io';

import 'package:offertorio/profile/domain/usecases/firebase_storage/firebase_storage_usecase.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class FirebaseStorageDataSource extends FirebaseStorageUseCase {
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageDataSource({required FirebaseStorage firebaseStorage})
      : _firebaseStorage = firebaseStorage;

  @override
  Future<String> uploadFile(String path, File imageFile) async {
    String downloadUrl = '';
    final tempDir = await path_provider.getTemporaryDirectory();
    final file = await FlutterImageCompress.compressAndGetFile(
      imageFile.absolute.path,
      "${tempDir.absolute.path}/${DateTime.now().millisecondsSinceEpoch}_images.jpg",
    );

    final metadata = SettableMetadata(contentType: 'image/jpeg');

    final uploadTask = _firebaseStorage
        .ref()
        .child('${path}_images.jpg')
        .putFile(File(file!.path), metadata);

    uploadTask.snapshotEvents.listen(
      (TaskSnapshot taskSnapshot) async {
        switch (taskSnapshot.state) {
          case TaskState.running:
            final progress = 100.0 *
                (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
            print("Upload is $progress% complete.");
            break;
          case TaskState.paused:
            print("Upload is paused.");
            break;
          case TaskState.canceled:
            print("Upload was canceled");
            break;
          case TaskState.error:
            // Handle unsuccessful uploads
            break;
          case TaskState.success:
            downloadUrl = await downloadFile(path);
            print(downloadUrl);
            break;
        }
      },
    );
    return downloadUrl;
  }

  @override
  Future<String> downloadFile(String path) async {
    final String downloadUrl = await _firebaseStorage
        .ref()
        .child('${path}_images.jpg')
        .getDownloadURL();
    return downloadUrl;
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
