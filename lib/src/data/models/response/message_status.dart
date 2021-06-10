import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_status.g.dart';

@JsonSerializable()
class MessageStatus extends Equatable {
  const MessageStatus({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  /// The status of the sent message.
  final bool? status;

  /// The status code.
  final int? code;

  /// The status message.
  final String? message;

  /// An information about the data that was sent.
  final List<MessageStatusData>? data;

  factory MessageStatus.fromJson(Map<String, dynamic> json) =>
      _$MessageStatusFromJson(json);

  @override
  List<Object?> get props => [status, code, message, data];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class MessageStatusData extends Equatable {
  const MessageStatusData({
    this.phoneNumber,
    this.senderId,
    this.submitDate,
    this.doneDate,
    this.status,
  });

  /// The phone number that the message has been sent to.
  @JsonKey(name: 'mobileNumber')
  final String? phoneNumber;

  /// The sender id.
  final String? senderId;

  /// The date of the sent message.
  final String? submitDate;

  /// The date when the message is successfully sent.
  final String? doneDate;

  /// The message status.
  final String? status;

  factory MessageStatusData.fromJson(Map<String, dynamic> json) =>
      _$MessageStatusDataFromJson(json);

  @override
  List<Object?> get props {
    return [
      phoneNumber,
      senderId,
      submitDate,
      doneDate,
      status,
    ];
  }

  @override
  bool get stringify => true;
}
