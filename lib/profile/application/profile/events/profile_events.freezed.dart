// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) formValidated,
    required TResult Function(ImageSource source) imagePicked,
    required TResult Function(XFile file) fileUploaded,
    required TResult Function(XFile file) profileCreatedFDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? formValidated,
    TResult? Function(ImageSource source)? imagePicked,
    TResult? Function(XFile file)? fileUploaded,
    TResult? Function(XFile file)? profileCreatedFDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? formValidated,
    TResult Function(ImageSource source)? imagePicked,
    TResult Function(XFile file)? fileUploaded,
    TResult Function(XFile file)? profileCreatedFDB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) formValidated,
    required TResult Function(PickImage value) imagePicked,
    required TResult Function(UploadFile value) fileUploaded,
    required TResult Function(CreateProfileFRDB value) profileCreatedFDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? formValidated,
    TResult? Function(PickImage value)? imagePicked,
    TResult? Function(UploadFile value)? fileUploaded,
    TResult? Function(CreateProfileFRDB value)? profileCreatedFDB,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? formValidated,
    TResult Function(PickImage value)? imagePicked,
    TResult Function(UploadFile value)? fileUploaded,
    TResult Function(CreateProfileFRDB value)? profileCreatedFDB,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventsCopyWith<$Res> {
  factory $ProfileEventsCopyWith(
          ProfileEvents value, $Res Function(ProfileEvents) then) =
      _$ProfileEventsCopyWithImpl<$Res, ProfileEvents>;
}

/// @nodoc
class _$ProfileEventsCopyWithImpl<$Res, $Val extends ProfileEvents>
    implements $ProfileEventsCopyWith<$Res> {
  _$ProfileEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidationCopyWith<$Res> {
  factory _$$ValidationCopyWith(
          _$Validation value, $Res Function(_$Validation) then) =
      __$$ValidationCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ValidationCopyWithImpl<$Res>
    extends _$ProfileEventsCopyWithImpl<$Res, _$Validation>
    implements _$$ValidationCopyWith<$Res> {
  __$$ValidationCopyWithImpl(
      _$Validation _value, $Res Function(_$Validation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$Validation(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Validation extends Validation {
  const _$Validation({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvents.formValidated(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Validation &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationCopyWith<_$Validation> get copyWith =>
      __$$ValidationCopyWithImpl<_$Validation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) formValidated,
    required TResult Function(ImageSource source) imagePicked,
    required TResult Function(XFile file) fileUploaded,
    required TResult Function(XFile file) profileCreatedFDB,
  }) {
    return formValidated(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? formValidated,
    TResult? Function(ImageSource source)? imagePicked,
    TResult? Function(XFile file)? fileUploaded,
    TResult? Function(XFile file)? profileCreatedFDB,
  }) {
    return formValidated?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? formValidated,
    TResult Function(ImageSource source)? imagePicked,
    TResult Function(XFile file)? fileUploaded,
    TResult Function(XFile file)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (formValidated != null) {
      return formValidated(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) formValidated,
    required TResult Function(PickImage value) imagePicked,
    required TResult Function(UploadFile value) fileUploaded,
    required TResult Function(CreateProfileFRDB value) profileCreatedFDB,
  }) {
    return formValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? formValidated,
    TResult? Function(PickImage value)? imagePicked,
    TResult? Function(UploadFile value)? fileUploaded,
    TResult? Function(CreateProfileFRDB value)? profileCreatedFDB,
  }) {
    return formValidated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? formValidated,
    TResult Function(PickImage value)? imagePicked,
    TResult Function(UploadFile value)? fileUploaded,
    TResult Function(CreateProfileFRDB value)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (formValidated != null) {
      return formValidated(this);
    }
    return orElse();
  }
}

abstract class Validation extends ProfileEvents {
  const factory Validation({required final String name}) = _$Validation;
  const Validation._() : super._();

  String get name;
  @JsonKey(ignore: true)
  _$$ValidationCopyWith<_$Validation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageCopyWith<$Res> {
  factory _$$PickImageCopyWith(
          _$PickImage value, $Res Function(_$PickImage) then) =
      __$$PickImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$PickImageCopyWithImpl<$Res>
    extends _$ProfileEventsCopyWithImpl<$Res, _$PickImage>
    implements _$$PickImageCopyWith<$Res> {
  __$$PickImageCopyWithImpl(
      _$PickImage _value, $Res Function(_$PickImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$PickImage(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$PickImage extends PickImage {
  const _$PickImage({required this.source}) : super._();

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ProfileEvents.imagePicked(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImage &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageCopyWith<_$PickImage> get copyWith =>
      __$$PickImageCopyWithImpl<_$PickImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) formValidated,
    required TResult Function(ImageSource source) imagePicked,
    required TResult Function(XFile file) fileUploaded,
    required TResult Function(XFile file) profileCreatedFDB,
  }) {
    return imagePicked(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? formValidated,
    TResult? Function(ImageSource source)? imagePicked,
    TResult? Function(XFile file)? fileUploaded,
    TResult? Function(XFile file)? profileCreatedFDB,
  }) {
    return imagePicked?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? formValidated,
    TResult Function(ImageSource source)? imagePicked,
    TResult Function(XFile file)? fileUploaded,
    TResult Function(XFile file)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) formValidated,
    required TResult Function(PickImage value) imagePicked,
    required TResult Function(UploadFile value) fileUploaded,
    required TResult Function(CreateProfileFRDB value) profileCreatedFDB,
  }) {
    return imagePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? formValidated,
    TResult? Function(PickImage value)? imagePicked,
    TResult? Function(UploadFile value)? fileUploaded,
    TResult? Function(CreateProfileFRDB value)? profileCreatedFDB,
  }) {
    return imagePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? formValidated,
    TResult Function(PickImage value)? imagePicked,
    TResult Function(UploadFile value)? fileUploaded,
    TResult Function(CreateProfileFRDB value)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class PickImage extends ProfileEvents {
  const factory PickImage({required final ImageSource source}) = _$PickImage;
  const PickImage._() : super._();

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$PickImageCopyWith<_$PickImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadFileCopyWith<$Res> {
  factory _$$UploadFileCopyWith(
          _$UploadFile value, $Res Function(_$UploadFile) then) =
      __$$UploadFileCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile file});
}

/// @nodoc
class __$$UploadFileCopyWithImpl<$Res>
    extends _$ProfileEventsCopyWithImpl<$Res, _$UploadFile>
    implements _$$UploadFileCopyWith<$Res> {
  __$$UploadFileCopyWithImpl(
      _$UploadFile _value, $Res Function(_$UploadFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$UploadFile(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$UploadFile extends UploadFile {
  const _$UploadFile({required this.file}) : super._();

  @override
  final XFile file;

  @override
  String toString() {
    return 'ProfileEvents.fileUploaded(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFile &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileCopyWith<_$UploadFile> get copyWith =>
      __$$UploadFileCopyWithImpl<_$UploadFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) formValidated,
    required TResult Function(ImageSource source) imagePicked,
    required TResult Function(XFile file) fileUploaded,
    required TResult Function(XFile file) profileCreatedFDB,
  }) {
    return fileUploaded(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? formValidated,
    TResult? Function(ImageSource source)? imagePicked,
    TResult? Function(XFile file)? fileUploaded,
    TResult? Function(XFile file)? profileCreatedFDB,
  }) {
    return fileUploaded?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? formValidated,
    TResult Function(ImageSource source)? imagePicked,
    TResult Function(XFile file)? fileUploaded,
    TResult Function(XFile file)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (fileUploaded != null) {
      return fileUploaded(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) formValidated,
    required TResult Function(PickImage value) imagePicked,
    required TResult Function(UploadFile value) fileUploaded,
    required TResult Function(CreateProfileFRDB value) profileCreatedFDB,
  }) {
    return fileUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? formValidated,
    TResult? Function(PickImage value)? imagePicked,
    TResult? Function(UploadFile value)? fileUploaded,
    TResult? Function(CreateProfileFRDB value)? profileCreatedFDB,
  }) {
    return fileUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? formValidated,
    TResult Function(PickImage value)? imagePicked,
    TResult Function(UploadFile value)? fileUploaded,
    TResult Function(CreateProfileFRDB value)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (fileUploaded != null) {
      return fileUploaded(this);
    }
    return orElse();
  }
}

abstract class UploadFile extends ProfileEvents {
  const factory UploadFile({required final XFile file}) = _$UploadFile;
  const UploadFile._() : super._();

  XFile get file;
  @JsonKey(ignore: true)
  _$$UploadFileCopyWith<_$UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProfileFRDBCopyWith<$Res> {
  factory _$$CreateProfileFRDBCopyWith(
          _$CreateProfileFRDB value, $Res Function(_$CreateProfileFRDB) then) =
      __$$CreateProfileFRDBCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile file});
}

/// @nodoc
class __$$CreateProfileFRDBCopyWithImpl<$Res>
    extends _$ProfileEventsCopyWithImpl<$Res, _$CreateProfileFRDB>
    implements _$$CreateProfileFRDBCopyWith<$Res> {
  __$$CreateProfileFRDBCopyWithImpl(
      _$CreateProfileFRDB _value, $Res Function(_$CreateProfileFRDB) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$CreateProfileFRDB(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$CreateProfileFRDB extends CreateProfileFRDB {
  const _$CreateProfileFRDB({required this.file}) : super._();

  @override
  final XFile file;

  @override
  String toString() {
    return 'ProfileEvents.profileCreatedFDB(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileFRDB &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileFRDBCopyWith<_$CreateProfileFRDB> get copyWith =>
      __$$CreateProfileFRDBCopyWithImpl<_$CreateProfileFRDB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) formValidated,
    required TResult Function(ImageSource source) imagePicked,
    required TResult Function(XFile file) fileUploaded,
    required TResult Function(XFile file) profileCreatedFDB,
  }) {
    return profileCreatedFDB(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? formValidated,
    TResult? Function(ImageSource source)? imagePicked,
    TResult? Function(XFile file)? fileUploaded,
    TResult? Function(XFile file)? profileCreatedFDB,
  }) {
    return profileCreatedFDB?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? formValidated,
    TResult Function(ImageSource source)? imagePicked,
    TResult Function(XFile file)? fileUploaded,
    TResult Function(XFile file)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (profileCreatedFDB != null) {
      return profileCreatedFDB(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Validation value) formValidated,
    required TResult Function(PickImage value) imagePicked,
    required TResult Function(UploadFile value) fileUploaded,
    required TResult Function(CreateProfileFRDB value) profileCreatedFDB,
  }) {
    return profileCreatedFDB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Validation value)? formValidated,
    TResult? Function(PickImage value)? imagePicked,
    TResult? Function(UploadFile value)? fileUploaded,
    TResult? Function(CreateProfileFRDB value)? profileCreatedFDB,
  }) {
    return profileCreatedFDB?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Validation value)? formValidated,
    TResult Function(PickImage value)? imagePicked,
    TResult Function(UploadFile value)? fileUploaded,
    TResult Function(CreateProfileFRDB value)? profileCreatedFDB,
    required TResult orElse(),
  }) {
    if (profileCreatedFDB != null) {
      return profileCreatedFDB(this);
    }
    return orElse();
  }
}

abstract class CreateProfileFRDB extends ProfileEvents {
  const factory CreateProfileFRDB({required final XFile file}) =
      _$CreateProfileFRDB;
  const CreateProfileFRDB._() : super._();

  XFile get file;
  @JsonKey(ignore: true)
  _$$CreateProfileFRDBCopyWith<_$CreateProfileFRDB> get copyWith =>
      throw _privateConstructorUsedError;
}
