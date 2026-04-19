// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['_id'] as num?)?.toInt(),
  userId: json['user_id'] as String?,
  userRole: json['user_role'] as String?,
  token: json['token'] as String?,
  deviceToken: json['device_token'] as String?,
  avater: json['avater'] as String?,
  backgroundAvater: json['background_avater'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  primaryEmail: json['primary_email'] as String?,
  optionalEmail: json['optional_email'] as String?,
  primaryNumber: json['primary_number'] as String?,
  optionalNumber: json['optional_number'] as String?,
  wallet: json['wallet'] as String?,
  gender: json['gender'] as String?,
  birthDate: json['birth_date'] as String?,
  address: json['address'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  pincode: json['pincode'] as String?,
  resume: json['resume'] as String?,
  subscription: json['subscription'] as String?,
  activationStatus: json['activation_status'] as String?,
  remark: json['remark'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user_id': instance.userId,
      'user_role': instance.userRole,
      'token': instance.token,
      'device_token': instance.deviceToken,
      'avater': instance.avater,
      'background_avater': instance.backgroundAvater,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'primary_email': instance.primaryEmail,
      'optional_email': instance.optionalEmail,
      'primary_number': instance.primaryNumber,
      'optional_number': instance.optionalNumber,
      'wallet': instance.wallet,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'resume': instance.resume,
      'subscription': instance.subscription,
      'activation_status': instance.activationStatus,
      'remark': instance.remark,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
