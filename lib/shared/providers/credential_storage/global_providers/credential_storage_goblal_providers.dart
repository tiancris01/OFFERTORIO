import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:offertorio/shared/domain/credentials_storage/repositories/credential_storage_repository.dart';
import 'package:offertorio/shared/infrastructure/credential_storage/data/secure_credentials_storage.dart';
import 'package:offertorio/shared/infrastructure/credential_storage/repositories/credential_storage_repository_impl.dart';

final flutterSecureStorageProvider = Provider((ref) {
  return const FlutterSecureStorage();
});

final credentialStorageProvider = Provider<CredentialStorageRepository>((ref) {
  return CredentialStorageRepositoryImpl(
      credentialStorageUseCase: SecureCredentialsStorage(
    ref.watch(flutterSecureStorageProvider),
  ));
});
