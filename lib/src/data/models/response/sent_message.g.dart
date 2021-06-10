// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentMessage _$SentMessageFromJson(Map<String, dynamic> json) {
  return SentMessage(
    status: json['status'] as bool?,
    code: json['code'] as int?,
    message: json['message'] as String?,
    data: json['data'] == null
        ? null
        : SentMessageData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SentMessageToJson(SentMessage instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

SentMessageData _$SentMessageDataFromJson(Map<String, dynamic> json) {
  return SentMessageData(
    messageId:
        (json['messageId'] as List<dynamic>?)?.map((e) => e as String).toList(),
    phoneNumber: json['number'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$SentMessageDataToJson(SentMessageData instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'number': instance.phoneNumber,
      'status': instance.status,
    };
