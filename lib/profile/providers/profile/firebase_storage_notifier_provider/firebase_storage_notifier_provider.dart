import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/profile/providers/profile/firebase_storage_notifier_provider/firebase_storage_state/firebase_storage_state.dart';
import 'package:offertorio/profile/providers/profile/global_providers/global_providers.dart';

final firebaseStorageNotifierProvider =
    StateNotifierProvider<FirebaseStorageNotifier, FirebaseStorageState>((ref) {
  final uploadFile = ref.watch(firebaseStorageRepositoryProvider).uploadFile;
  return FirebaseStorageNotifier(
    uploadFile: uploadFile,
  );
});

typedef UploadFile = Future<String> Function(String path, File file);

class FirebaseStorageNotifier extends StateNotifier<FirebaseStorageState> {
  UploadFile uploadFile;

  FirebaseStorageNotifier({
    required this.uploadFile,
  }) : super(const FirebaseStorageState.inital());

  Future<void> uploadToFirebaseStorage({
    required String path,
    required File file,
  }) async {
    uploadFile(path, file);
  }

  Future<void> download() async {
    // state = const FirebaseStorageState.downloaded(null);
  }
}
