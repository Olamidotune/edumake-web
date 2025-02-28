import 'dart:io';
import 'package:dio/dio.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_id/event_id_response.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_model.dart';
import 'package:edumake_frontend/src/features/dashboard/api/school/models/events/event_response.dart';
import 'package:retrofit/http.dart';

part 'event_clients.g.dart';

@RestApi()
abstract class EventClients {
  factory EventClients(Dio dio, {String baseUrl}) = _EventClients;

  @POST('/api/v1/sch/events/{schoolId}')
  @MultiPart()
  Future<EventModel> createEvent(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Part() String title,
    @Part() List<String> associateEvents,
    @Part() String date,
    @Part() String details,
    @Part() List<String> classes,
    @Part() File eventImage,
  );

  @GET('/api/v1/sch/events/all/{schoolId}')
  @FormUrlEncoded()
  Future<EventResponse> fetchEvents(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
  );

  @GET('/api/v1/sch/events/{eventId}')
  @FormUrlEncoded()
  Future<EventIdResponse> fetchEventByID(
    @Header('Authorization') String authorization,
    @Path('eventId') String eventId,
  );

  @GET('/api/v1/sch/events/all/{schoolId}')
  @FormUrlEncoded()
  Future<EventResponse> fetchEventByClass(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Query('classId') String classId,
  );

  @PUT('/api/v1/sch/events/{schoolId}/{eventId}')
  @FormUrlEncoded()
  Future<EventIdResponse> editEvents(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Path('eventId') String eventId,
    @Field('title') String title,
    @Field('date') String date,
    @Field('details') String details,
  );

  @DELETE('/api/v1/sch/events/{schoolId}/{eventId}')
  Future<void> deleteEvent(
    @Header('Authorization') String authorization,
    @Path('schoolId') String schoolId,
    @Path('eventId') String eventId,
  );
}
