import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_events.freezed.dart';

@freezed
class ProfileEvents with _$ProfileEvents {
  const ProfileEvents._();
  const factory ProfileEvents.formValidated({required String name}) =
      Validation;
  const factory ProfileEvents.imagePicked({required ImageSource source}) =
      PickImage;
  const factory ProfileEvents.fileUploaded({required XFile file}) = UploadFile;
  const factory ProfileEvents.profileCreatedFDB({required XFile file}) =
      CreateProfileFRDB;
}
