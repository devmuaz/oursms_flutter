import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'models/request/one_message_request.dart';
import 'models/request/otp_message_request.dart';
import 'models/response/message_status.dart';
import 'models/response/sent_message.dart';

part 'oursms_service.g.dart';

@RestApi(baseUrl: 'https://oursms.app/api/v1/')
abstract class OursmsService {
  factory OursmsService(Dio dio, {String baseUrl}) = _OursmsService;

  @POST('SMS/Add/SendOneSms')
  Future<HttpResponse<SentMessage>> sendOneMessage(
    @Body() OneMessageRequest request,
  );

  @POST('SMS/Add/SendOtpSms')
  Future<HttpResponse<SentMessage>> sendOtpMessage(
    @Body() OtpMessageRequest request,
  );

  @GET('SMS/Get/GetStatus/{messageId}')
  Future<HttpResponse<MessageStatus>> getMessageStatus(
    @Path('messageId') String messageId,
  );
}
