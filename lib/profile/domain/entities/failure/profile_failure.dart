import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const ProfileFailure._();
  const factory ProfileFailure.server(int? errorcode) = _ServerFailure;
  const factory ProfileFailure.local(String? message) = _LocalFailure;
}
