import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sms_request.dart';

part 'one_message_request.g.dart';

@JsonSerializable()
class OneMessageRequest extends SmsRequest with EquatableMixin {
  const OneMessageRequest({
    String? key,
    int? userId,
    String? phoneNumber,
    this.message,
  }) : super(key: key, userId: userId, phoneNumber: phoneNumber);

  /// The message you want to send to the specified phone number.
  final String? message;

  Map<String, dynamic> toJson() => _$OneMessageRequestToJson(this);

  @override
  List<Object?> get props => [key, userId, phoneNumber, message];

  @override
  bool get stringify => true;
}
