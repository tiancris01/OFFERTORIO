import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertorio/profile/domain/entities/user/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    required String name,
    required String uid,
    required String profileImage,
    required String phoneNumber,
    required bool isOnline,
  }) = _UserDTO;

  factory UserDTO.fromEntite(UserEntitie _) {
    return UserDTO(
      name: _.name,
      uid: _.uid,
      profileImage: _.profileImage,
      phoneNumber: _.phoneNumber,
      isOnline: _.isOnline,
    );
  }

  UserEntitie toEntite() {
    return UserEntitie(
      name: name,
      uid: uid,
      profileImage: profileImage,
      phoneNumber: phoneNumber,
      isOnline: isOnline,
    );
  }
}
