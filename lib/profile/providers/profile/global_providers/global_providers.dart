import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/profile/infrastructure/data_soureces/gallery_camera/gallery_camera_data_source.dart';
import 'package:offertorio/profile/infrastructure/respositories/image_picker/image_picker_repository_imp.dart';

final imagePickerRepositoryProvider = Provider((ref) {
  return ImagePickerRepositoryImpl(imagePickerUseCase: ImagePickerDataSource());
});
