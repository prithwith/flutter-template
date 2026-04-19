// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: '_id') int? get id;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'user_role') String? get userRole;@JsonKey(name: 'token') String? get token;@JsonKey(name: 'device_token') String? get deviceToken;@JsonKey(name: 'avater') String? get avater;@JsonKey(name: 'background_avater') String? get backgroundAvater;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'primary_email') String? get primaryEmail;@JsonKey(name: 'optional_email') String? get optionalEmail;@JsonKey(name: 'primary_number') String? get primaryNumber;@JsonKey(name: 'optional_number') String? get optionalNumber;@JsonKey(name: 'wallet') String? get wallet;@JsonKey(name: 'gender') String? get gender;@JsonKey(name: 'birth_date') String? get birthDate;@JsonKey(name: 'address') String? get address;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'state') String? get state;@JsonKey(name: 'pincode') String? get pincode;@JsonKey(name: 'resume') String? get resume;@JsonKey(name: 'subscription') String? get subscription;@JsonKey(name: 'activation_status') String? get activationStatus;@JsonKey(name: 'remark') String? get remark;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.token, token) || other.token == token)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.avater, avater) || other.avater == avater)&&(identical(other.backgroundAvater, backgroundAvater) || other.backgroundAvater == backgroundAvater)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.primaryEmail, primaryEmail) || other.primaryEmail == primaryEmail)&&(identical(other.optionalEmail, optionalEmail) || other.optionalEmail == optionalEmail)&&(identical(other.primaryNumber, primaryNumber) || other.primaryNumber == primaryNumber)&&(identical(other.optionalNumber, optionalNumber) || other.optionalNumber == optionalNumber)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.resume, resume) || other.resume == resume)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.activationStatus, activationStatus) || other.activationStatus == activationStatus)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userRole,token,deviceToken,avater,backgroundAvater,firstName,lastName,primaryEmail,optionalEmail,primaryNumber,optionalNumber,wallet,gender,birthDate,address,city,state,pincode,resume,subscription,activationStatus,remark,createdAt,updatedAt]);

@override
String toString() {
  return 'UserModel(id: $id, userId: $userId, userRole: $userRole, token: $token, deviceToken: $deviceToken, avater: $avater, backgroundAvater: $backgroundAvater, firstName: $firstName, lastName: $lastName, primaryEmail: $primaryEmail, optionalEmail: $optionalEmail, primaryNumber: $primaryNumber, optionalNumber: $optionalNumber, wallet: $wallet, gender: $gender, birthDate: $birthDate, address: $address, city: $city, state: $state, pincode: $pincode, resume: $resume, subscription: $subscription, activationStatus: $activationStatus, remark: $remark, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') int? id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'user_role') String? userRole,@JsonKey(name: 'token') String? token,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'avater') String? avater,@JsonKey(name: 'background_avater') String? backgroundAvater,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'primary_email') String? primaryEmail,@JsonKey(name: 'optional_email') String? optionalEmail,@JsonKey(name: 'primary_number') String? primaryNumber,@JsonKey(name: 'optional_number') String? optionalNumber,@JsonKey(name: 'wallet') String? wallet,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'address') String? address,@JsonKey(name: 'city') String? city,@JsonKey(name: 'state') String? state,@JsonKey(name: 'pincode') String? pincode,@JsonKey(name: 'resume') String? resume,@JsonKey(name: 'subscription') String? subscription,@JsonKey(name: 'activation_status') String? activationStatus,@JsonKey(name: 'remark') String? remark,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? userRole = freezed,Object? token = freezed,Object? deviceToken = freezed,Object? avater = freezed,Object? backgroundAvater = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? primaryEmail = freezed,Object? optionalEmail = freezed,Object? primaryNumber = freezed,Object? optionalNumber = freezed,Object? wallet = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? pincode = freezed,Object? resume = freezed,Object? subscription = freezed,Object? activationStatus = freezed,Object? remark = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,avater: freezed == avater ? _self.avater : avater // ignore: cast_nullable_to_non_nullable
as String?,backgroundAvater: freezed == backgroundAvater ? _self.backgroundAvater : backgroundAvater // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,primaryEmail: freezed == primaryEmail ? _self.primaryEmail : primaryEmail // ignore: cast_nullable_to_non_nullable
as String?,optionalEmail: freezed == optionalEmail ? _self.optionalEmail : optionalEmail // ignore: cast_nullable_to_non_nullable
as String?,primaryNumber: freezed == primaryNumber ? _self.primaryNumber : primaryNumber // ignore: cast_nullable_to_non_nullable
as String?,optionalNumber: freezed == optionalNumber ? _self.optionalNumber : optionalNumber // ignore: cast_nullable_to_non_nullable
as String?,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,resume: freezed == resume ? _self.resume : resume // ignore: cast_nullable_to_non_nullable
as String?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as String?,activationStatus: freezed == activationStatus ? _self.activationStatus : activationStatus // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  int? id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'user_role')  String? userRole, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'avater')  String? avater, @JsonKey(name: 'background_avater')  String? backgroundAvater, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'primary_email')  String? primaryEmail, @JsonKey(name: 'optional_email')  String? optionalEmail, @JsonKey(name: 'primary_number')  String? primaryNumber, @JsonKey(name: 'optional_number')  String? optionalNumber, @JsonKey(name: 'wallet')  String? wallet, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'pincode')  String? pincode, @JsonKey(name: 'resume')  String? resume, @JsonKey(name: 'subscription')  String? subscription, @JsonKey(name: 'activation_status')  String? activationStatus, @JsonKey(name: 'remark')  String? remark, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.userId,_that.userRole,_that.token,_that.deviceToken,_that.avater,_that.backgroundAvater,_that.firstName,_that.lastName,_that.primaryEmail,_that.optionalEmail,_that.primaryNumber,_that.optionalNumber,_that.wallet,_that.gender,_that.birthDate,_that.address,_that.city,_that.state,_that.pincode,_that.resume,_that.subscription,_that.activationStatus,_that.remark,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  int? id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'user_role')  String? userRole, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'avater')  String? avater, @JsonKey(name: 'background_avater')  String? backgroundAvater, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'primary_email')  String? primaryEmail, @JsonKey(name: 'optional_email')  String? optionalEmail, @JsonKey(name: 'primary_number')  String? primaryNumber, @JsonKey(name: 'optional_number')  String? optionalNumber, @JsonKey(name: 'wallet')  String? wallet, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'pincode')  String? pincode, @JsonKey(name: 'resume')  String? resume, @JsonKey(name: 'subscription')  String? subscription, @JsonKey(name: 'activation_status')  String? activationStatus, @JsonKey(name: 'remark')  String? remark, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.userId,_that.userRole,_that.token,_that.deviceToken,_that.avater,_that.backgroundAvater,_that.firstName,_that.lastName,_that.primaryEmail,_that.optionalEmail,_that.primaryNumber,_that.optionalNumber,_that.wallet,_that.gender,_that.birthDate,_that.address,_that.city,_that.state,_that.pincode,_that.resume,_that.subscription,_that.activationStatus,_that.remark,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  int? id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'user_role')  String? userRole, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'avater')  String? avater, @JsonKey(name: 'background_avater')  String? backgroundAvater, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'primary_email')  String? primaryEmail, @JsonKey(name: 'optional_email')  String? optionalEmail, @JsonKey(name: 'primary_number')  String? primaryNumber, @JsonKey(name: 'optional_number')  String? optionalNumber, @JsonKey(name: 'wallet')  String? wallet, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'pincode')  String? pincode, @JsonKey(name: 'resume')  String? resume, @JsonKey(name: 'subscription')  String? subscription, @JsonKey(name: 'activation_status')  String? activationStatus, @JsonKey(name: 'remark')  String? remark, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.userId,_that.userRole,_that.token,_that.deviceToken,_that.avater,_that.backgroundAvater,_that.firstName,_that.lastName,_that.primaryEmail,_that.optionalEmail,_that.primaryNumber,_that.optionalNumber,_that.wallet,_that.gender,_that.birthDate,_that.address,_that.city,_that.state,_that.pincode,_that.resume,_that.subscription,_that.activationStatus,_that.remark,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: '_id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'user_role') this.userRole, @JsonKey(name: 'token') this.token, @JsonKey(name: 'device_token') this.deviceToken, @JsonKey(name: 'avater') this.avater, @JsonKey(name: 'background_avater') this.backgroundAvater, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'primary_email') this.primaryEmail, @JsonKey(name: 'optional_email') this.optionalEmail, @JsonKey(name: 'primary_number') this.primaryNumber, @JsonKey(name: 'optional_number') this.optionalNumber, @JsonKey(name: 'wallet') this.wallet, @JsonKey(name: 'gender') this.gender, @JsonKey(name: 'birth_date') this.birthDate, @JsonKey(name: 'address') this.address, @JsonKey(name: 'city') this.city, @JsonKey(name: 'state') this.state, @JsonKey(name: 'pincode') this.pincode, @JsonKey(name: 'resume') this.resume, @JsonKey(name: 'subscription') this.subscription, @JsonKey(name: 'activation_status') this.activationStatus, @JsonKey(name: 'remark') this.remark, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: '_id') final  int? id;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'user_role') final  String? userRole;
@override@JsonKey(name: 'token') final  String? token;
@override@JsonKey(name: 'device_token') final  String? deviceToken;
@override@JsonKey(name: 'avater') final  String? avater;
@override@JsonKey(name: 'background_avater') final  String? backgroundAvater;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'primary_email') final  String? primaryEmail;
@override@JsonKey(name: 'optional_email') final  String? optionalEmail;
@override@JsonKey(name: 'primary_number') final  String? primaryNumber;
@override@JsonKey(name: 'optional_number') final  String? optionalNumber;
@override@JsonKey(name: 'wallet') final  String? wallet;
@override@JsonKey(name: 'gender') final  String? gender;
@override@JsonKey(name: 'birth_date') final  String? birthDate;
@override@JsonKey(name: 'address') final  String? address;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'state') final  String? state;
@override@JsonKey(name: 'pincode') final  String? pincode;
@override@JsonKey(name: 'resume') final  String? resume;
@override@JsonKey(name: 'subscription') final  String? subscription;
@override@JsonKey(name: 'activation_status') final  String? activationStatus;
@override@JsonKey(name: 'remark') final  String? remark;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.token, token) || other.token == token)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.avater, avater) || other.avater == avater)&&(identical(other.backgroundAvater, backgroundAvater) || other.backgroundAvater == backgroundAvater)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.primaryEmail, primaryEmail) || other.primaryEmail == primaryEmail)&&(identical(other.optionalEmail, optionalEmail) || other.optionalEmail == optionalEmail)&&(identical(other.primaryNumber, primaryNumber) || other.primaryNumber == primaryNumber)&&(identical(other.optionalNumber, optionalNumber) || other.optionalNumber == optionalNumber)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.resume, resume) || other.resume == resume)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&(identical(other.activationStatus, activationStatus) || other.activationStatus == activationStatus)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userRole,token,deviceToken,avater,backgroundAvater,firstName,lastName,primaryEmail,optionalEmail,primaryNumber,optionalNumber,wallet,gender,birthDate,address,city,state,pincode,resume,subscription,activationStatus,remark,createdAt,updatedAt]);

@override
String toString() {
  return 'UserModel(id: $id, userId: $userId, userRole: $userRole, token: $token, deviceToken: $deviceToken, avater: $avater, backgroundAvater: $backgroundAvater, firstName: $firstName, lastName: $lastName, primaryEmail: $primaryEmail, optionalEmail: $optionalEmail, primaryNumber: $primaryNumber, optionalNumber: $optionalNumber, wallet: $wallet, gender: $gender, birthDate: $birthDate, address: $address, city: $city, state: $state, pincode: $pincode, resume: $resume, subscription: $subscription, activationStatus: $activationStatus, remark: $remark, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') int? id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'user_role') String? userRole,@JsonKey(name: 'token') String? token,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'avater') String? avater,@JsonKey(name: 'background_avater') String? backgroundAvater,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'primary_email') String? primaryEmail,@JsonKey(name: 'optional_email') String? optionalEmail,@JsonKey(name: 'primary_number') String? primaryNumber,@JsonKey(name: 'optional_number') String? optionalNumber,@JsonKey(name: 'wallet') String? wallet,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'address') String? address,@JsonKey(name: 'city') String? city,@JsonKey(name: 'state') String? state,@JsonKey(name: 'pincode') String? pincode,@JsonKey(name: 'resume') String? resume,@JsonKey(name: 'subscription') String? subscription,@JsonKey(name: 'activation_status') String? activationStatus,@JsonKey(name: 'remark') String? remark,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? userRole = freezed,Object? token = freezed,Object? deviceToken = freezed,Object? avater = freezed,Object? backgroundAvater = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? primaryEmail = freezed,Object? optionalEmail = freezed,Object? primaryNumber = freezed,Object? optionalNumber = freezed,Object? wallet = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? pincode = freezed,Object? resume = freezed,Object? subscription = freezed,Object? activationStatus = freezed,Object? remark = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,avater: freezed == avater ? _self.avater : avater // ignore: cast_nullable_to_non_nullable
as String?,backgroundAvater: freezed == backgroundAvater ? _self.backgroundAvater : backgroundAvater // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,primaryEmail: freezed == primaryEmail ? _self.primaryEmail : primaryEmail // ignore: cast_nullable_to_non_nullable
as String?,optionalEmail: freezed == optionalEmail ? _self.optionalEmail : optionalEmail // ignore: cast_nullable_to_non_nullable
as String?,primaryNumber: freezed == primaryNumber ? _self.primaryNumber : primaryNumber // ignore: cast_nullable_to_non_nullable
as String?,optionalNumber: freezed == optionalNumber ? _self.optionalNumber : optionalNumber // ignore: cast_nullable_to_non_nullable
as String?,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,resume: freezed == resume ? _self.resume : resume // ignore: cast_nullable_to_non_nullable
as String?,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as String?,activationStatus: freezed == activationStatus ? _self.activationStatus : activationStatus // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
