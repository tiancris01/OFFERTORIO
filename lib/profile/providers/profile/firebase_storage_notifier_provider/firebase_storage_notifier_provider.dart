import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/profile/providers/profile/firebase_storage_notifier_provider/firebase_storage_state/firebase_storage_state.dart';
import 'package:offertorio/profile/providers/profile/global_providers/global_providers.dart';

final firebaseStorageNotifierProvider =
    StateNotifierProvider<FirebaseStorageNotifier, FirebaseStorageState>((ref) {
  final uploadFile = ref.watch(firebaseStorageRepositoryProvider);
  return FirebaseStorageNotifier(
    uploadFile: uploadFile.uploadFile,
    downloadFile: uploadFile.downloadFile,
  );
});

typedef UploadFile = Future<String> Function(String path, File file);
typedef DownloadFile = Future<String> Function(String path);

class FirebaseStorageNotifier extends StateNotifier<FirebaseStorageState> {
  UploadFile uploadFile;
  DownloadFile downloadFile;

  FirebaseStorageNotifier({
    required this.uploadFile,
    required this.downloadFile,
  }) : super(const FirebaseStorageState.inital());

  Future<String> uploadToFirebaseStorage({
    required String path,
    required File file,
  }) async {
    final downloadUrl = await uploadFile(path, file);
    return downloadUrl;
  }

  Future<String> downloadFromFirebaseStorage({
    required String path,
  }) async {
    final downloadUrl = await downloadFile(path);
    return downloadUrl;
  }
}
