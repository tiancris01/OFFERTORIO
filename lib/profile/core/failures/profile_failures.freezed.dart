// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? platform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileServerFailure value) server,
    required TResult Function(_ProfileStorageFailure value) platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileServerFailure value)? server,
    TResult? Function(_ProfileStorageFailure value)? platform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileServerFailure value)? server,
    TResult Function(_ProfileStorageFailure value)? platform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFailureCopyWith<ProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res, ProfileFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res, $Val extends ProfileFailure>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileServerFailureCopyWith<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  factory _$$_ProfileServerFailureCopyWith(_$_ProfileServerFailure value,
          $Res Function(_$_ProfileServerFailure) then) =
      __$$_ProfileServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ProfileServerFailureCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$_ProfileServerFailure>
    implements _$$_ProfileServerFailureCopyWith<$Res> {
  __$$_ProfileServerFailureCopyWithImpl(_$_ProfileServerFailure _value,
      $Res Function(_$_ProfileServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ProfileServerFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfileServerFailure extends _ProfileServerFailure {
  const _$_ProfileServerFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ProfileFailure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileServerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileServerFailureCopyWith<_$_ProfileServerFailure> get copyWith =>
      __$$_ProfileServerFailureCopyWithImpl<_$_ProfileServerFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) platform,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? platform,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? platform,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileServerFailure value) server,
    required TResult Function(_ProfileStorageFailure value) platform,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileServerFailure value)? server,
    TResult? Function(_ProfileStorageFailure value)? platform,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileServerFailure value)? server,
    TResult Function(_ProfileStorageFailure value)? platform,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ProfileServerFailure extends ProfileFailure {
  const factory _ProfileServerFailure({final String? message}) =
      _$_ProfileServerFailure;
  const _ProfileServerFailure._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileServerFailureCopyWith<_$_ProfileServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileStorageFailureCopyWith<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  factory _$$_ProfileStorageFailureCopyWith(_$_ProfileStorageFailure value,
          $Res Function(_$_ProfileStorageFailure) then) =
      __$$_ProfileStorageFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ProfileStorageFailureCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$_ProfileStorageFailure>
    implements _$$_ProfileStorageFailureCopyWith<$Res> {
  __$$_ProfileStorageFailureCopyWithImpl(_$_ProfileStorageFailure _value,
      $Res Function(_$_ProfileStorageFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ProfileStorageFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfileStorageFailure extends _ProfileStorageFailure {
  const _$_ProfileStorageFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ProfileFailure.platform(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileStorageFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStorageFailureCopyWith<_$_ProfileStorageFailure> get copyWith =>
      __$$_ProfileStorageFailureCopyWithImpl<_$_ProfileStorageFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) platform,
  }) {
    return platform(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? server,
    TResult? Function(String? message)? platform,
  }) {
    return platform?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? platform,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileServerFailure value) server,
    required TResult Function(_ProfileStorageFailure value) platform,
  }) {
    return platform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileServerFailure value)? server,
    TResult? Function(_ProfileStorageFailure value)? platform,
  }) {
    return platform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileServerFailure value)? server,
    TResult Function(_ProfileStorageFailure value)? platform,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(this);
    }
    return orElse();
  }
}

abstract class _ProfileStorageFailure extends ProfileFailure {
  const factory _ProfileStorageFailure({final String? message}) =
      _$_ProfileStorageFailure;
  const _ProfileStorageFailure._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStorageFailureCopyWith<_$_ProfileStorageFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
