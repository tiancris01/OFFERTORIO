import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_storage_state.freezed.dart';

@freezed
class FirebaseStorageState with _$FirebaseStorageState {
  const FirebaseStorageState._();
  const factory FirebaseStorageState.inital() = _FirebaseStorageStateInitial;
  const factory FirebaseStorageState.uploaded(UploadTask task) =
      _FirebaseStorageStateUploaded;
  const factory FirebaseStorageState.downloaded(String downloadUrl) =
      _FirebaseStorageStateDownloaded;
  const factory FirebaseStorageState.error() = _FirebaseStorageStateError;
}
