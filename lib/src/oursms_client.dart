import 'dart:io' show HttpStatus;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';

import 'data/models/request/one_message_request.dart';
import 'data/models/request/otp_message_request.dart';
import 'data/models/response/message_status.dart';
import 'data/models/response/sent_message.dart';
import 'data/oursms_service.dart';

/// A class that provides simple methods which deals the
/// Oursms API service.
///
/// For more, vist `https://oursms.app/`
class OursmsClient {
  /// The client of the `[Oursms]` service.
  ///
  /// note: to disable logging, change the `[dio]` parameter
  /// to your own instance with its different settings.
  OursmsClient({
    required this.key,
    required this.userId,
    Dio? dio,
  }) {
    _dio = dio ?? _defaultDio;
    _oursmsService = OursmsService(_dio!);
  }

  /// The api key value.
  final String key;

  /// The user id which identifies your account.
  final int userId;

  Dio? _dio;
  OursmsService? _oursmsService;

  static final Logger _logger = Logger();

  final Dio _defaultDio = Dio()
    ..interceptors.add(DefaultDioLoggingInterceptor(_logger));

  /// Sends one single message to the specified phone number.
  Future<SentMessage?> sendOneMessage(
    String phoneNumber,
    String message,
  ) async {
    return await _getStateOf<SentMessage>(request: () {
      return _oursmsService!.sendOneMessage(
        OneMessageRequest(
          key: key,
          userId: userId,
          phoneNumber: phoneNumber,
          message: message,
        ),
      );
    });
  }

  /// Sends one time password to the specified phone number.
  Future<SentMessage?> sendOtpMessage(
    String phoneNumber,
    String otp,
  ) async {
    return await _getStateOf<SentMessage>(request: () {
      return _oursmsService!.sendOtpMessage(
        OtpMessageRequest(
          key: key,
          userId: userId,
          phoneNumber: phoneNumber,
          otp: otp,
        ),
      );
    });
  }

  /// Gets an information and status about a message that has
  /// been sent.
  Future<MessageStatus?> getMessageStatus(
    String messageId,
  ) async {
    return await _getStateOf<MessageStatus>(request: () {
      return _oursmsService!.getMessageStatus(messageId);
    });
  }

  Future<T?> _getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return httpResponse.data;
      } else {
        throw DioError(
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          error: 'DioErrorThrown',
          type: DioErrorType.response,
        );
      }
    } on DioError catch (e) {
      if (_dio!.interceptors.isEmpty) {
        _logger.d(e, e.error, e.stackTrace);
      }
      return null;
    }
  }
}

/// This dio interceptor logs sent requests, received responses,
/// and errors if occur.
///
/// Using [Logger] class.
class DefaultDioLoggingInterceptor extends Interceptor {
  final Logger _logger;

  DefaultDioLoggingInterceptor(this._logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.d(
      'REQUEST:\n'
      'path: ${options.path},\n'
      'method: ${options.method},\n'
      'headers: ${options.headers},\n'
      'data: ${options.data}\n',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.d(
      'RESPONSE:\n'
      'statusMessage: ${response.statusMessage},\n'
      'statusCode: ${response.statusCode},\n'
      'data: ${response.data}\n',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _logger.e(
      'ERROR:\n'
      'statusMessage: ${err.response?.statusMessage},\n'
      'statusCode: ${err.response?.statusCode},\n'
      'message: ${err.message},\n'
      'error: ${err.error},\n'
      'type: ${err.type}\n'
      'data: ${err.response?.data}\n',
      err.error,
      err.stackTrace,
    );
    super.onError(err, handler);
  }
}
