import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sent_message.g.dart';

@JsonSerializable()
class SentMessage extends Equatable {
  const SentMessage({
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
  final SentMessageData? data;

  factory SentMessage.fromJson(Map<String, dynamic> json) =>
      _$SentMessageFromJson(json);

  @override
  List<Object?> get props => [status, code, message, data];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class SentMessageData extends Equatable {
  const SentMessageData({
    this.messageId,
    this.phoneNumber,
    this.status,
  });

  /// A list of message ids.
  final List<String>? messageId;

  /// The phone number that the message has been sent to.
  @JsonKey(name: 'number')
  final String? phoneNumber;

  /// The status of the current processing data being sent.
  final String? status;

  factory SentMessageData.fromJson(Map<String, dynamic> json) =>
      _$SentMessageDataFromJson(json);

  @override
  List<Object?> get props => [messageId, phoneNumber, status];

  @override
  bool get stringify => true;
}
