// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpMessageRequest _$OtpMessageRequestFromJson(Map<String, dynamic> json) {
  return OtpMessageRequest(
    key: json['key'] as String?,
    userId: json['userId'] as int?,
    phoneNumber: json['phoneNumber'] as String?,
    otp: json['otp'] as String?,
  );
}

Map<String, dynamic> _$OtpMessageRequestToJson(OtpMessageRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'otp': instance.otp,
    };
