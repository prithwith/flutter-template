import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: '_id') int? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'user_role') String? userRole,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'device_token') String? deviceToken,
    @JsonKey(name: 'avater') String? avater,
    @JsonKey(name: 'background_avater') String? backgroundAvater,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'primary_email') String? primaryEmail,
    @JsonKey(name: 'optional_email') String? optionalEmail,
    @JsonKey(name: 'primary_number') String? primaryNumber,
    @JsonKey(name: 'optional_number') String? optionalNumber,
    @JsonKey(name: 'wallet') String? wallet,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'pincode') String? pincode,
    @JsonKey(name: 'resume') String? resume,
    @JsonKey(name: 'subscription') String? subscription,
    @JsonKey(name: 'activation_status') String? activationStatus,
    @JsonKey(name: 'remark') String? remark,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
