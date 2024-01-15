// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEntitie {
  String get name => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntitieCopyWith<UserEntitie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntitieCopyWith<$Res> {
  factory $UserEntitieCopyWith(
          UserEntitie value, $Res Function(UserEntitie) then) =
      _$UserEntitieCopyWithImpl<$Res, UserEntitie>;
  @useResult
  $Res call(
      {String name,
      String uid,
      String profileImage,
      String phoneNumber,
      bool isOnline});
}

/// @nodoc
class _$UserEntitieCopyWithImpl<$Res, $Val extends UserEntitie>
    implements $UserEntitieCopyWith<$Res> {
  _$UserEntitieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uid = null,
    Object? profileImage = null,
    Object? phoneNumber = null,
    Object? isOnline = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntitieCopyWith<$Res>
    implements $UserEntitieCopyWith<$Res> {
  factory _$$_UserEntitieCopyWith(
          _$_UserEntitie value, $Res Function(_$_UserEntitie) then) =
      __$$_UserEntitieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String uid,
      String profileImage,
      String phoneNumber,
      bool isOnline});
}

/// @nodoc
class __$$_UserEntitieCopyWithImpl<$Res>
    extends _$UserEntitieCopyWithImpl<$Res, _$_UserEntitie>
    implements _$$_UserEntitieCopyWith<$Res> {
  __$$_UserEntitieCopyWithImpl(
      _$_UserEntitie _value, $Res Function(_$_UserEntitie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uid = null,
    Object? profileImage = null,
    Object? phoneNumber = null,
    Object? isOnline = null,
  }) {
    return _then(_$_UserEntitie(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserEntitie extends _UserEntitie {
  const _$_UserEntitie(
      {required this.name,
      required this.uid,
      required this.profileImage,
      required this.phoneNumber,
      required this.isOnline})
      : super._();

  @override
  final String name;
  @override
  final String uid;
  @override
  final String profileImage;
  @override
  final String phoneNumber;
  @override
  final bool isOnline;

  @override
  String toString() {
    return 'UserEntitie(name: $name, uid: $uid, profileImage: $profileImage, phoneNumber: $phoneNumber, isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntitie &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, uid, profileImage, phoneNumber, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntitieCopyWith<_$_UserEntitie> get copyWith =>
      __$$_UserEntitieCopyWithImpl<_$_UserEntitie>(this, _$identity);
}

abstract class _UserEntitie extends UserEntitie {
  const factory _UserEntitie(
      {required final String name,
      required final String uid,
      required final String profileImage,
      required final String phoneNumber,
      required final bool isOnline}) = _$_UserEntitie;
  const _UserEntitie._() : super._();

  @override
  String get name;
  @override
  String get uid;
  @override
  String get profileImage;
  @override
  String get phoneNumber;
  @override
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntitieCopyWith<_$_UserEntitie> get copyWith =>
      throw _privateConstructorUsedError;
}
