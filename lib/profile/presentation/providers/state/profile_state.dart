import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState.initial() = _initial;
  const factory ProfileState.imageLoading() = ImageLoading;
  const factory ProfileState.imageLoaded({XFile? xfile}) = ImageLoaded;
  const factory ProfileState.imageUploading() = ImageUpload;
  const factory ProfileState.imageUploaded({String? urlImage}) = ImageUploaded;
  const factory ProfileState.profileCreated() = ProfileCreated;
  const factory ProfileState.error({String? message}) = Error;
}
