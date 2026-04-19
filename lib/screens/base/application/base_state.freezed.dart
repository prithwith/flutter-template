// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseState {

 UserModel? get user; int get bottomNavIndex; bool get isLoading; bool get isDevicetokenLoading; bool get isfetchUsersLoading; List<UserModel> get usersList; int get productsPaginationId; int get totalUsersCount;
/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseStateCopyWith<BaseState> get copyWith => _$BaseStateCopyWithImpl<BaseState>(this as BaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseState&&(identical(other.user, user) || other.user == user)&&(identical(other.bottomNavIndex, bottomNavIndex) || other.bottomNavIndex == bottomNavIndex)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isDevicetokenLoading, isDevicetokenLoading) || other.isDevicetokenLoading == isDevicetokenLoading)&&(identical(other.isfetchUsersLoading, isfetchUsersLoading) || other.isfetchUsersLoading == isfetchUsersLoading)&&const DeepCollectionEquality().equals(other.usersList, usersList)&&(identical(other.productsPaginationId, productsPaginationId) || other.productsPaginationId == productsPaginationId)&&(identical(other.totalUsersCount, totalUsersCount) || other.totalUsersCount == totalUsersCount));
}


@override
int get hashCode => Object.hash(runtimeType,user,bottomNavIndex,isLoading,isDevicetokenLoading,isfetchUsersLoading,const DeepCollectionEquality().hash(usersList),productsPaginationId,totalUsersCount);

@override
String toString() {
  return 'BaseState(user: $user, bottomNavIndex: $bottomNavIndex, isLoading: $isLoading, isDevicetokenLoading: $isDevicetokenLoading, isfetchUsersLoading: $isfetchUsersLoading, usersList: $usersList, productsPaginationId: $productsPaginationId, totalUsersCount: $totalUsersCount)';
}


}

/// @nodoc
abstract mixin class $BaseStateCopyWith<$Res>  {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) _then) = _$BaseStateCopyWithImpl;
@useResult
$Res call({
 UserModel? user, int bottomNavIndex, bool isLoading, bool isDevicetokenLoading, bool isfetchUsersLoading, List<UserModel> usersList, int productsPaginationId, int totalUsersCount
});


$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$BaseStateCopyWithImpl<$Res>
    implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._self, this._then);

  final BaseState _self;
  final $Res Function(BaseState) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? bottomNavIndex = null,Object? isLoading = null,Object? isDevicetokenLoading = null,Object? isfetchUsersLoading = null,Object? usersList = null,Object? productsPaginationId = null,Object? totalUsersCount = null,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,bottomNavIndex: null == bottomNavIndex ? _self.bottomNavIndex : bottomNavIndex // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isDevicetokenLoading: null == isDevicetokenLoading ? _self.isDevicetokenLoading : isDevicetokenLoading // ignore: cast_nullable_to_non_nullable
as bool,isfetchUsersLoading: null == isfetchUsersLoading ? _self.isfetchUsersLoading : isfetchUsersLoading // ignore: cast_nullable_to_non_nullable
as bool,usersList: null == usersList ? _self.usersList : usersList // ignore: cast_nullable_to_non_nullable
as List<UserModel>,productsPaginationId: null == productsPaginationId ? _self.productsPaginationId : productsPaginationId // ignore: cast_nullable_to_non_nullable
as int,totalUsersCount: null == totalUsersCount ? _self.totalUsersCount : totalUsersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [BaseState].
extension BaseStatePatterns on BaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseState value)  $default,){
final _that = this;
switch (_that) {
case _BaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseState value)?  $default,){
final _that = this;
switch (_that) {
case _BaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserModel? user,  int bottomNavIndex,  bool isLoading,  bool isDevicetokenLoading,  bool isfetchUsersLoading,  List<UserModel> usersList,  int productsPaginationId,  int totalUsersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseState() when $default != null:
return $default(_that.user,_that.bottomNavIndex,_that.isLoading,_that.isDevicetokenLoading,_that.isfetchUsersLoading,_that.usersList,_that.productsPaginationId,_that.totalUsersCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserModel? user,  int bottomNavIndex,  bool isLoading,  bool isDevicetokenLoading,  bool isfetchUsersLoading,  List<UserModel> usersList,  int productsPaginationId,  int totalUsersCount)  $default,) {final _that = this;
switch (_that) {
case _BaseState():
return $default(_that.user,_that.bottomNavIndex,_that.isLoading,_that.isDevicetokenLoading,_that.isfetchUsersLoading,_that.usersList,_that.productsPaginationId,_that.totalUsersCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserModel? user,  int bottomNavIndex,  bool isLoading,  bool isDevicetokenLoading,  bool isfetchUsersLoading,  List<UserModel> usersList,  int productsPaginationId,  int totalUsersCount)?  $default,) {final _that = this;
switch (_that) {
case _BaseState() when $default != null:
return $default(_that.user,_that.bottomNavIndex,_that.isLoading,_that.isDevicetokenLoading,_that.isfetchUsersLoading,_that.usersList,_that.productsPaginationId,_that.totalUsersCount);case _:
  return null;

}
}

}

/// @nodoc


class _BaseState extends BaseState {
  const _BaseState({this.user, this.bottomNavIndex = 0, this.isLoading = false, this.isDevicetokenLoading = false, this.isfetchUsersLoading = false, final  List<UserModel> usersList = const [], this.productsPaginationId = 0, this.totalUsersCount = 0}): _usersList = usersList,super._();
  

@override final  UserModel? user;
@override@JsonKey() final  int bottomNavIndex;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isDevicetokenLoading;
@override@JsonKey() final  bool isfetchUsersLoading;
 final  List<UserModel> _usersList;
@override@JsonKey() List<UserModel> get usersList {
  if (_usersList is EqualUnmodifiableListView) return _usersList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usersList);
}

@override@JsonKey() final  int productsPaginationId;
@override@JsonKey() final  int totalUsersCount;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseStateCopyWith<_BaseState> get copyWith => __$BaseStateCopyWithImpl<_BaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseState&&(identical(other.user, user) || other.user == user)&&(identical(other.bottomNavIndex, bottomNavIndex) || other.bottomNavIndex == bottomNavIndex)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isDevicetokenLoading, isDevicetokenLoading) || other.isDevicetokenLoading == isDevicetokenLoading)&&(identical(other.isfetchUsersLoading, isfetchUsersLoading) || other.isfetchUsersLoading == isfetchUsersLoading)&&const DeepCollectionEquality().equals(other._usersList, _usersList)&&(identical(other.productsPaginationId, productsPaginationId) || other.productsPaginationId == productsPaginationId)&&(identical(other.totalUsersCount, totalUsersCount) || other.totalUsersCount == totalUsersCount));
}


@override
int get hashCode => Object.hash(runtimeType,user,bottomNavIndex,isLoading,isDevicetokenLoading,isfetchUsersLoading,const DeepCollectionEquality().hash(_usersList),productsPaginationId,totalUsersCount);

@override
String toString() {
  return 'BaseState(user: $user, bottomNavIndex: $bottomNavIndex, isLoading: $isLoading, isDevicetokenLoading: $isDevicetokenLoading, isfetchUsersLoading: $isfetchUsersLoading, usersList: $usersList, productsPaginationId: $productsPaginationId, totalUsersCount: $totalUsersCount)';
}


}

/// @nodoc
abstract mixin class _$BaseStateCopyWith<$Res> implements $BaseStateCopyWith<$Res> {
  factory _$BaseStateCopyWith(_BaseState value, $Res Function(_BaseState) _then) = __$BaseStateCopyWithImpl;
@override @useResult
$Res call({
 UserModel? user, int bottomNavIndex, bool isLoading, bool isDevicetokenLoading, bool isfetchUsersLoading, List<UserModel> usersList, int productsPaginationId, int totalUsersCount
});


@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$BaseStateCopyWithImpl<$Res>
    implements _$BaseStateCopyWith<$Res> {
  __$BaseStateCopyWithImpl(this._self, this._then);

  final _BaseState _self;
  final $Res Function(_BaseState) _then;

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? bottomNavIndex = null,Object? isLoading = null,Object? isDevicetokenLoading = null,Object? isfetchUsersLoading = null,Object? usersList = null,Object? productsPaginationId = null,Object? totalUsersCount = null,}) {
  return _then(_BaseState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,bottomNavIndex: null == bottomNavIndex ? _self.bottomNavIndex : bottomNavIndex // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isDevicetokenLoading: null == isDevicetokenLoading ? _self.isDevicetokenLoading : isDevicetokenLoading // ignore: cast_nullable_to_non_nullable
as bool,isfetchUsersLoading: null == isfetchUsersLoading ? _self.isfetchUsersLoading : isfetchUsersLoading // ignore: cast_nullable_to_non_nullable
as bool,usersList: null == usersList ? _self._usersList : usersList // ignore: cast_nullable_to_non_nullable
as List<UserModel>,productsPaginationId: null == productsPaginationId ? _self.productsPaginationId : productsPaginationId // ignore: cast_nullable_to_non_nullable
as int,totalUsersCount: null == totalUsersCount ? _self.totalUsersCount : totalUsersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of BaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
