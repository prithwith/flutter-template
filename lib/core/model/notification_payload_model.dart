import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_payload_model.freezed.dart';
part 'notification_payload_model.g.dart';

@freezed
abstract class NotificationPayloadModel with _$NotificationPayloadModel {
  const factory NotificationPayloadModel({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'route') String? route,
    @JsonKey(name: 'taskId') String? taskId,
    @JsonKey(name: 'clientId') String? clientId,
    @JsonKey(name: 'extra') Map<String, dynamic>? extra,
  }) = _NotificationPayloadModel;

  factory NotificationPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadModelFromJson(json);
}
