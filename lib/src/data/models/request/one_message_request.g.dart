// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneMessageRequest _$OneMessageRequestFromJson(Map<String, dynamic> json) {
  return OneMessageRequest(
    key: json['key'] as String?,
    userId: json['userId'] as int?,
    phoneNumber: json['phoneNumber'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$OneMessageRequestToJson(OneMessageRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'message': instance.message,
    };
