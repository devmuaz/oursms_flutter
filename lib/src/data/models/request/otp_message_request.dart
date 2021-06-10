import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sms_request.dart';

part 'otp_message_request.g.dart';

@JsonSerializable()
class OtpMessageRequest extends SmsRequest with EquatableMixin {
  const OtpMessageRequest({
    String? key,
    int? userId,
    String? phoneNumber,
    this.otp,
  }) : super(key: key, userId: userId, phoneNumber: phoneNumber);

  /// The one time password value.
  final String? otp;

  Map<String, dynamic> toJson() => _$OtpMessageRequestToJson(this);

  @override
  List<Object?> get props => [key, userId, phoneNumber, otp];

  @override
  bool get stringify => true;
}
