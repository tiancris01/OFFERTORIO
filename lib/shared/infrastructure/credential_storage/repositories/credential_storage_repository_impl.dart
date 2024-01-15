// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';

import 'package:offertorio/shared/domain/credentials_storage/repositories/credential_storage_repository.dart';
import 'package:offertorio/shared/domain/credentials_storage/usecases/credential_storage_usecase.dart';

class CredentialStorageRepositoryImpl implements CredentialStorageRepository {
  final CredentialStorageUseCase credentialStorageUseCase;
  CredentialStorageRepositoryImpl({
    required this.credentialStorageUseCase,
  });

  @override
  Future<void> clear() async {
    return await credentialStorageUseCase.clear();
  }

  @override
  Future<UserCredential?> read() async {
    return await credentialStorageUseCase.read();
  }

  @override
  Future<void> save(UserCredential userCredential) async {
    return await credentialStorageUseCase.save(userCredential);
  }
}
