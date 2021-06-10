// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageStatus _$MessageStatusFromJson(Map<String, dynamic> json) {
  return MessageStatus(
    status: json['status'] as bool?,
    code: json['code'] as int?,
    message: json['message'] as String?,
    data: (json['data'] as List<dynamic>?)
        ?.map((e) => MessageStatusData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MessageStatusToJson(MessageStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

MessageStatusData _$MessageStatusDataFromJson(Map<String, dynamic> json) {
  return MessageStatusData(
    phoneNumber: json['mobileNumber'] as String?,
    senderId: json['senderId'] as String?,
    submitDate: json['submitDate'] as String?,
    doneDate: json['doneDate'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$MessageStatusDataToJson(MessageStatusData instance) =>
    <String, dynamic>{
      'mobileNumber': instance.phoneNumber,
      'senderId': instance.senderId,
      'submitDate': instance.submitDate,
      'doneDate': instance.doneDate,
      'status': instance.status,
    };
