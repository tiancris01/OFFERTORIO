// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorcode) server,
    required TResult Function(String? message) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorcode)? server,
    TResult? Function(String? message)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorcode)? server,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_LocalFailure value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_LocalFailure value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_LocalFailure value)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res, ProfileFailure>;
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res, $Val extends ProfileFailure>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({int? errorcode});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorcode = freezed,
  }) {
    return _then(_$_ServerFailure(
      freezed == errorcode
          ? _value.errorcode
          : errorcode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ServerFailure extends _ServerFailure {
  const _$_ServerFailure(this.errorcode) : super._();

  @override
  final int? errorcode;

  @override
  String toString() {
    return 'ProfileFailure.server(errorcode: $errorcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            (identical(other.errorcode, errorcode) ||
                other.errorcode == errorcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorcode) server,
    required TResult Function(String? message) local,
  }) {
    return server(errorcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorcode)? server,
    TResult? Function(String? message)? local,
  }) {
    return server?.call(errorcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorcode)? server,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(errorcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_LocalFailure value) local,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_LocalFailure value)? local,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_LocalFailure value)? local,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure extends ProfileFailure {
  const factory _ServerFailure(final int? errorcode) = _$_ServerFailure;
  const _ServerFailure._() : super._();

  int? get errorcode;
  @JsonKey(ignore: true)
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalFailureCopyWith<$Res> {
  factory _$$_LocalFailureCopyWith(
          _$_LocalFailure value, $Res Function(_$_LocalFailure) then) =
      __$$_LocalFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_LocalFailureCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res, _$_LocalFailure>
    implements _$$_LocalFailureCopyWith<$Res> {
  __$$_LocalFailureCopyWithImpl(
      _$_LocalFailure _value, $Res Function(_$_LocalFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LocalFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LocalFailure extends _LocalFailure {
  const _$_LocalFailure(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'ProfileFailure.local(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalFailureCopyWith<_$_LocalFailure> get copyWith =>
      __$$_LocalFailureCopyWithImpl<_$_LocalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorcode) server,
    required TResult Function(String? message) local,
  }) {
    return local(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorcode)? server,
    TResult? Function(String? message)? local,
  }) {
    return local?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorcode)? server,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_LocalFailure value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_LocalFailure value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_LocalFailure value)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _LocalFailure extends ProfileFailure {
  const factory _LocalFailure(final String? message) = _$_LocalFailure;
  const _LocalFailure._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_LocalFailureCopyWith<_$_LocalFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
