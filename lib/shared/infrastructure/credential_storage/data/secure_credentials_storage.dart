import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:offertorio/shared/domain/credentials_storage/usecases/credential_storage_usecase.dart';

class SecureCredentialsStorage implements CredentialStorageUseCase {
  final FlutterSecureStorage _secureStorage;

  SecureCredentialsStorage(this._secureStorage);

  static const _key = 'userCredential';

  UserCredential? _catchCredential;

  @override
  Future<UserCredential?> read() async {
    if (_catchCredential != null) {
      return _catchCredential;
    } else {
      final json = await _secureStorage.read(key: _key);
      if (json == null) {
        return null;
      }
      try {
        return _catchCredential = jsonDecode(json);
      } on FormatException {
        return null;
      }
    }
  }

  @override
  Future<void> save(UserCredential userCredential) {
    return _secureStorage.write(
      key: _key,
      value: userCredential.toJson(),
    );
  }

  @override
  Future<void> clear() {
    _catchCredential = null;
    return _secureStorage.delete(key: _key);
  }
}

extension ToJson on UserCredential {
  String toJson() => json.encode({
        'additionalUserInfo: $additionalUserInfo, '
            'credential: $credential, '
            'user: $user,'
      });
}
