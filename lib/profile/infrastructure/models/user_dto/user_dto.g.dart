// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      name: json['name'] as String,
      uid: json['uid'] as String,
      profileImage: json['profileImage'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isOnline: json['isOnline'] as bool,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'profileImage': instance.profileImage,
      'phoneNumber': instance.phoneNumber,
      'isOnline': instance.isOnline,
    };
