import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/profile/infrastructure/data_soureces/firebase_storage/firebase_storage_data_source.dart';
import 'package:offertorio/profile/infrastructure/data_soureces/gallery_and_camera/gallery_camera_data_source.dart';
import 'package:offertorio/profile/infrastructure/respositories/firebase_storage/firebase_storage_repository_impl.dart';
import 'package:offertorio/profile/infrastructure/respositories/image_picker/image_picker_repository_imp.dart';

final imagePickerRepositoryProvider = Provider((ref) {
  return ImagePickerRepositoryImpl(imagePickerUseCase: ImagePickerDataSource());
});

final firebaseStorageProvider = Provider((ref) {
  return FirebaseStorage.instance;
});

final firebaseStorageRepositoryProvider = Provider((ref) {
  return FirebaseStorageRepositoryImpl(
      firebaseStorageUseCase: FirebaseStorageDataSource(
    firebaseStorage: ref.watch(firebaseStorageProvider),
  ));
});
