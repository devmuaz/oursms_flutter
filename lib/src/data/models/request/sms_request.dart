class SmsRequest {
  const SmsRequest({
    this.userId,
    this.key,
    this.phoneNumber,
  });

  /// The api key value.
  final String? key;

  /// The user id which identifies your account.
  final int? userId;

  /// The phone number which will receive the data.
  final String? phoneNumber;
}
