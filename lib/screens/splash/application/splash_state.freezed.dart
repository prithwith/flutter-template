// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashState {

 ThemeMode get themeMode; String get fcmToken; bool get isFCMTokenLoading; bool get hasInternet; bool get isHasInternetLoading;
/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateCopyWith<SplashState> get copyWith => _$SplashStateCopyWithImpl<SplashState>(this as SplashState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.isFCMTokenLoading, isFCMTokenLoading) || other.isFCMTokenLoading == isFCMTokenLoading)&&(identical(other.hasInternet, hasInternet) || other.hasInternet == hasInternet)&&(identical(other.isHasInternetLoading, isHasInternetLoading) || other.isHasInternetLoading == isHasInternetLoading));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,fcmToken,isFCMTokenLoading,hasInternet,isHasInternetLoading);

@override
String toString() {
  return 'SplashState(themeMode: $themeMode, fcmToken: $fcmToken, isFCMTokenLoading: $isFCMTokenLoading, hasInternet: $hasInternet, isHasInternetLoading: $isHasInternetLoading)';
}


}

/// @nodoc
abstract mixin class $SplashStateCopyWith<$Res>  {
  factory $SplashStateCopyWith(SplashState value, $Res Function(SplashState) _then) = _$SplashStateCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode, String fcmToken, bool isFCMTokenLoading, bool hasInternet, bool isHasInternetLoading
});




}
/// @nodoc
class _$SplashStateCopyWithImpl<$Res>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._self, this._then);

  final SplashState _self;
  final $Res Function(SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,Object? fcmToken = null,Object? isFCMTokenLoading = null,Object? hasInternet = null,Object? isHasInternetLoading = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,isFCMTokenLoading: null == isFCMTokenLoading ? _self.isFCMTokenLoading : isFCMTokenLoading // ignore: cast_nullable_to_non_nullable
as bool,hasInternet: null == hasInternet ? _self.hasInternet : hasInternet // ignore: cast_nullable_to_non_nullable
as bool,isHasInternetLoading: null == isHasInternetLoading ? _self.isHasInternetLoading : isHasInternetLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashState value)  $default,){
final _that = this;
switch (_that) {
case _SplashState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashState value)?  $default,){
final _that = this;
switch (_that) {
case _SplashState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode themeMode,  String fcmToken,  bool isFCMTokenLoading,  bool hasInternet,  bool isHasInternetLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplashState() when $default != null:
return $default(_that.themeMode,_that.fcmToken,_that.isFCMTokenLoading,_that.hasInternet,_that.isHasInternetLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode themeMode,  String fcmToken,  bool isFCMTokenLoading,  bool hasInternet,  bool isHasInternetLoading)  $default,) {final _that = this;
switch (_that) {
case _SplashState():
return $default(_that.themeMode,_that.fcmToken,_that.isFCMTokenLoading,_that.hasInternet,_that.isHasInternetLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode themeMode,  String fcmToken,  bool isFCMTokenLoading,  bool hasInternet,  bool isHasInternetLoading)?  $default,) {final _that = this;
switch (_that) {
case _SplashState() when $default != null:
return $default(_that.themeMode,_that.fcmToken,_that.isFCMTokenLoading,_that.hasInternet,_that.isHasInternetLoading);case _:
  return null;

}
}

}

/// @nodoc


class _SplashState extends SplashState {
  const _SplashState({this.themeMode = ThemeMode.system, this.fcmToken = "", this.isFCMTokenLoading = true, this.hasInternet = true, this.isHasInternetLoading = true}): super._();
  

@override@JsonKey() final  ThemeMode themeMode;
@override@JsonKey() final  String fcmToken;
@override@JsonKey() final  bool isFCMTokenLoading;
@override@JsonKey() final  bool hasInternet;
@override@JsonKey() final  bool isHasInternetLoading;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashStateCopyWith<_SplashState> get copyWith => __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.isFCMTokenLoading, isFCMTokenLoading) || other.isFCMTokenLoading == isFCMTokenLoading)&&(identical(other.hasInternet, hasInternet) || other.hasInternet == hasInternet)&&(identical(other.isHasInternetLoading, isHasInternetLoading) || other.isHasInternetLoading == isHasInternetLoading));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,fcmToken,isFCMTokenLoading,hasInternet,isHasInternetLoading);

@override
String toString() {
  return 'SplashState(themeMode: $themeMode, fcmToken: $fcmToken, isFCMTokenLoading: $isFCMTokenLoading, hasInternet: $hasInternet, isHasInternetLoading: $isHasInternetLoading)';
}


}

/// @nodoc
abstract mixin class _$SplashStateCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(_SplashState value, $Res Function(_SplashState) _then) = __$SplashStateCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode, String fcmToken, bool isFCMTokenLoading, bool hasInternet, bool isHasInternetLoading
});




}
/// @nodoc
class __$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(this._self, this._then);

  final _SplashState _self;
  final $Res Function(_SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? fcmToken = null,Object? isFCMTokenLoading = null,Object? hasInternet = null,Object? isHasInternetLoading = null,}) {
  return _then(_SplashState(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,isFCMTokenLoading: null == isFCMTokenLoading ? _self.isFCMTokenLoading : isFCMTokenLoading // ignore: cast_nullable_to_non_nullable
as bool,hasInternet: null == hasInternet ? _self.hasInternet : hasInternet // ignore: cast_nullable_to_non_nullable
as bool,isHasInternetLoading: null == isHasInternetLoading ? _self.isHasInternetLoading : isHasInternetLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
