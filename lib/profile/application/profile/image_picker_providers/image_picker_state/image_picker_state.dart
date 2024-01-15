import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_state.freezed.dart';

@freezed
class ImagePickerSate with _$ImagePickerSate {
  const ImagePickerSate._();
  const factory ImagePickerSate.initial() = _ImagePickerSateInitial;
  const factory ImagePickerSate.loading() = _ImagePickerSateLoading;
  const factory ImagePickerSate.data({required XFile xfile}) =
      _ImagePickerSateData;
  const factory ImagePickerSate.error({String? message}) =
      _ImagePickerSateError;
}
