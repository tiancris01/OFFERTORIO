// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class UserEntitie with _$UserEntitie {
  const UserEntitie._();
  const factory UserEntitie({
    required String name,
    required String uid,
    required String profileImage,
    required String phoneNumber,
    required bool isOnline,
  }) = _UserEntitie;
}
