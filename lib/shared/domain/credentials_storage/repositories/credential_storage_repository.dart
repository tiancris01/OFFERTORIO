import 'package:firebase_auth/firebase_auth.dart';

abstract class CredentialStorageRepository {
  Future<UserCredential?> read();
  Future<void> save(UserCredential userCredential);
  Future<void> clear();
}
