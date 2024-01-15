import 'package:firebase_auth/firebase_auth.dart';

abstract class CredentialStorageUseCase {
  Future<UserCredential?> read();
  Future<void> save(UserCredential userCredential);
  Future<void> clear();
}
