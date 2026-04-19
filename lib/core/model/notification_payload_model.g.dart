// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationPayloadModel _$NotificationPayloadModelFromJson(
  Map<String, dynamic> json,
) => _NotificationPayloadModel(
  title: json['title'] as String?,
  body: json['body'] as String?,
  route: json['route'] as String?,
  taskId: json['taskId'] as String?,
  clientId: json['clientId'] as String?,
  extra: json['extra'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$NotificationPayloadModelToJson(
  _NotificationPayloadModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'body': instance.body,
  'route': instance.route,
  'taskId': instance.taskId,
  'clientId': instance.clientId,
  'extra': instance.extra,
};
