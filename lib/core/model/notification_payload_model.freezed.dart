// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationPayloadModel {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'body') String? get body;@JsonKey(name: 'route') String? get route;@JsonKey(name: 'taskId') String? get taskId;@JsonKey(name: 'clientId') String? get clientId;@JsonKey(name: 'extra') Map<String, dynamic>? get extra;
/// Create a copy of NotificationPayloadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPayloadModelCopyWith<NotificationPayloadModel> get copyWith => _$NotificationPayloadModelCopyWithImpl<NotificationPayloadModel>(this as NotificationPayloadModel, _$identity);

  /// Serializes this NotificationPayloadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPayloadModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.route, route) || other.route == route)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&const DeepCollectionEquality().equals(other.extra, extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,route,taskId,clientId,const DeepCollectionEquality().hash(extra));

@override
String toString() {
  return 'NotificationPayloadModel(title: $title, body: $body, route: $route, taskId: $taskId, clientId: $clientId, extra: $extra)';
}


}

/// @nodoc
abstract mixin class $NotificationPayloadModelCopyWith<$Res>  {
  factory $NotificationPayloadModelCopyWith(NotificationPayloadModel value, $Res Function(NotificationPayloadModel) _then) = _$NotificationPayloadModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'body') String? body,@JsonKey(name: 'route') String? route,@JsonKey(name: 'taskId') String? taskId,@JsonKey(name: 'clientId') String? clientId,@JsonKey(name: 'extra') Map<String, dynamic>? extra
});




}
/// @nodoc
class _$NotificationPayloadModelCopyWithImpl<$Res>
    implements $NotificationPayloadModelCopyWith<$Res> {
  _$NotificationPayloadModelCopyWithImpl(this._self, this._then);

  final NotificationPayloadModel _self;
  final $Res Function(NotificationPayloadModel) _then;

/// Create a copy of NotificationPayloadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? body = freezed,Object? route = freezed,Object? taskId = freezed,Object? clientId = freezed,Object? extra = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPayloadModel].
extension NotificationPayloadModelPatterns on NotificationPayloadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPayloadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPayloadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPayloadModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPayloadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPayloadModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPayloadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'route')  String? route, @JsonKey(name: 'taskId')  String? taskId, @JsonKey(name: 'clientId')  String? clientId, @JsonKey(name: 'extra')  Map<String, dynamic>? extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPayloadModel() when $default != null:
return $default(_that.title,_that.body,_that.route,_that.taskId,_that.clientId,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'route')  String? route, @JsonKey(name: 'taskId')  String? taskId, @JsonKey(name: 'clientId')  String? clientId, @JsonKey(name: 'extra')  Map<String, dynamic>? extra)  $default,) {final _that = this;
switch (_that) {
case _NotificationPayloadModel():
return $default(_that.title,_that.body,_that.route,_that.taskId,_that.clientId,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'route')  String? route, @JsonKey(name: 'taskId')  String? taskId, @JsonKey(name: 'clientId')  String? clientId, @JsonKey(name: 'extra')  Map<String, dynamic>? extra)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPayloadModel() when $default != null:
return $default(_that.title,_that.body,_that.route,_that.taskId,_that.clientId,_that.extra);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPayloadModel implements NotificationPayloadModel {
  const _NotificationPayloadModel({@JsonKey(name: 'title') this.title, @JsonKey(name: 'body') this.body, @JsonKey(name: 'route') this.route, @JsonKey(name: 'taskId') this.taskId, @JsonKey(name: 'clientId') this.clientId, @JsonKey(name: 'extra') final  Map<String, dynamic>? extra}): _extra = extra;
  factory _NotificationPayloadModel.fromJson(Map<String, dynamic> json) => _$NotificationPayloadModelFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'body') final  String? body;
@override@JsonKey(name: 'route') final  String? route;
@override@JsonKey(name: 'taskId') final  String? taskId;
@override@JsonKey(name: 'clientId') final  String? clientId;
 final  Map<String, dynamic>? _extra;
@override@JsonKey(name: 'extra') Map<String, dynamic>? get extra {
  final value = _extra;
  if (value == null) return null;
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of NotificationPayloadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPayloadModelCopyWith<_NotificationPayloadModel> get copyWith => __$NotificationPayloadModelCopyWithImpl<_NotificationPayloadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPayloadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPayloadModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.route, route) || other.route == route)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&const DeepCollectionEquality().equals(other._extra, _extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,route,taskId,clientId,const DeepCollectionEquality().hash(_extra));

@override
String toString() {
  return 'NotificationPayloadModel(title: $title, body: $body, route: $route, taskId: $taskId, clientId: $clientId, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$NotificationPayloadModelCopyWith<$Res> implements $NotificationPayloadModelCopyWith<$Res> {
  factory _$NotificationPayloadModelCopyWith(_NotificationPayloadModel value, $Res Function(_NotificationPayloadModel) _then) = __$NotificationPayloadModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'body') String? body,@JsonKey(name: 'route') String? route,@JsonKey(name: 'taskId') String? taskId,@JsonKey(name: 'clientId') String? clientId,@JsonKey(name: 'extra') Map<String, dynamic>? extra
});




}
/// @nodoc
class __$NotificationPayloadModelCopyWithImpl<$Res>
    implements _$NotificationPayloadModelCopyWith<$Res> {
  __$NotificationPayloadModelCopyWithImpl(this._self, this._then);

  final _NotificationPayloadModel _self;
  final $Res Function(_NotificationPayloadModel) _then;

/// Create a copy of NotificationPayloadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? body = freezed,Object? route = freezed,Object? taskId = freezed,Object? clientId = freezed,Object? extra = freezed,}) {
  return _then(_NotificationPayloadModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,extra: freezed == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
