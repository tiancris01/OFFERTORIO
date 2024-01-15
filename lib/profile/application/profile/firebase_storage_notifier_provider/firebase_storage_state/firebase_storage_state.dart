import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_storage_state.freezed.dart';

@freezed
class FirebaseStorageState with _$FirebaseStorageState {
  const FirebaseStorageState._();
  const factory FirebaseStorageState.inital() = _Initial;
  const factory FirebaseStorageState.uploaded() = _Uploaded;
  const factory FirebaseStorageState.downloaded() = _Downloaded;
  const factory FirebaseStorageState.success() = _Success;
  const factory FirebaseStorageState.error(String error) = _Error;
}
