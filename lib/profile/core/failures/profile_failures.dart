import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failures.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const ProfileFailure._();
  const factory ProfileFailure.server({String? message}) =
      _ProfileServerFailure;
  const factory ProfileFailure.platform({String? message}) =
      _ProfileStorageFailure;
}
