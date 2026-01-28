// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileEventLoad value)?  load,TResult Function( ProfileEventRefresh value)?  refresh,TResult Function( ProfileEventDelete value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileEventLoad() when load != null:
return load(_that);case ProfileEventRefresh() when refresh != null:
return refresh(_that);case ProfileEventDelete() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileEventLoad value)  load,required TResult Function( ProfileEventRefresh value)  refresh,required TResult Function( ProfileEventDelete value)  delete,}){
final _that = this;
switch (_that) {
case ProfileEventLoad():
return load(_that);case ProfileEventRefresh():
return refresh(_that);case ProfileEventDelete():
return delete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileEventLoad value)?  load,TResult? Function( ProfileEventRefresh value)?  refresh,TResult? Function( ProfileEventDelete value)?  delete,}){
final _that = this;
switch (_that) {
case ProfileEventLoad() when load != null:
return load(_that);case ProfileEventRefresh() when refresh != null:
return refresh(_that);case ProfileEventDelete() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? id)?  load,TResult Function()?  refresh,TResult Function( String id)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileEventLoad() when load != null:
return load(_that.id);case ProfileEventRefresh() when refresh != null:
return refresh();case ProfileEventDelete() when delete != null:
return delete(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? id)  load,required TResult Function()  refresh,required TResult Function( String id)  delete,}) {final _that = this;
switch (_that) {
case ProfileEventLoad():
return load(_that.id);case ProfileEventRefresh():
return refresh();case ProfileEventDelete():
return delete(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? id)?  load,TResult? Function()?  refresh,TResult? Function( String id)?  delete,}) {final _that = this;
switch (_that) {
case ProfileEventLoad() when load != null:
return load(_that.id);case ProfileEventRefresh() when refresh != null:
return refresh();case ProfileEventDelete() when delete != null:
return delete(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class ProfileEventLoad implements ProfileEvent {
  const ProfileEventLoad({this.id});
  

 final  String? id;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEventLoadCopyWith<ProfileEventLoad> get copyWith => _$ProfileEventLoadCopyWithImpl<ProfileEventLoad>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEventLoad&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProfileEvent.load(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProfileEventLoadCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileEventLoadCopyWith(ProfileEventLoad value, $Res Function(ProfileEventLoad) _then) = _$ProfileEventLoadCopyWithImpl;
@useResult
$Res call({
 String? id
});




}
/// @nodoc
class _$ProfileEventLoadCopyWithImpl<$Res>
    implements $ProfileEventLoadCopyWith<$Res> {
  _$ProfileEventLoadCopyWithImpl(this._self, this._then);

  final ProfileEventLoad _self;
  final $Res Function(ProfileEventLoad) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(ProfileEventLoad(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ProfileEventRefresh implements ProfileEvent {
  const ProfileEventRefresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEventRefresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.refresh()';
}


}




/// @nodoc


class ProfileEventDelete implements ProfileEvent {
  const ProfileEventDelete({required this.id});
  

 final  String id;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEventDeleteCopyWith<ProfileEventDelete> get copyWith => _$ProfileEventDeleteCopyWithImpl<ProfileEventDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEventDelete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProfileEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class $ProfileEventDeleteCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileEventDeleteCopyWith(ProfileEventDelete value, $Res Function(ProfileEventDelete) _then) = _$ProfileEventDeleteCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$ProfileEventDeleteCopyWithImpl<$Res>
    implements $ProfileEventDeleteCopyWith<$Res> {
  _$ProfileEventDeleteCopyWithImpl(this._self, this._then);

  final ProfileEventDelete _self;
  final $Res Function(ProfileEventDelete) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ProfileEventDelete(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileStateInitial value)?  initial,TResult Function( ProfileStateLoading value)?  loading,TResult Function( ProfileStateLoaded value)?  loaded,TResult Function( ProfileStateError value)?  error,TResult Function( ProfileStateDeleteSuccess value)?  deleteSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileStateInitial() when initial != null:
return initial(_that);case ProfileStateLoading() when loading != null:
return loading(_that);case ProfileStateLoaded() when loaded != null:
return loaded(_that);case ProfileStateError() when error != null:
return error(_that);case ProfileStateDeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileStateInitial value)  initial,required TResult Function( ProfileStateLoading value)  loading,required TResult Function( ProfileStateLoaded value)  loaded,required TResult Function( ProfileStateError value)  error,required TResult Function( ProfileStateDeleteSuccess value)  deleteSuccess,}){
final _that = this;
switch (_that) {
case ProfileStateInitial():
return initial(_that);case ProfileStateLoading():
return loading(_that);case ProfileStateLoaded():
return loaded(_that);case ProfileStateError():
return error(_that);case ProfileStateDeleteSuccess():
return deleteSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileStateInitial value)?  initial,TResult? Function( ProfileStateLoading value)?  loading,TResult? Function( ProfileStateLoaded value)?  loaded,TResult? Function( ProfileStateError value)?  error,TResult? Function( ProfileStateDeleteSuccess value)?  deleteSuccess,}){
final _that = this;
switch (_that) {
case ProfileStateInitial() when initial != null:
return initial(_that);case ProfileStateLoading() when loading != null:
return loading(_that);case ProfileStateLoaded() when loaded != null:
return loaded(_that);case ProfileStateError() when error != null:
return error(_that);case ProfileStateDeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( dynamic data)?  loaded,TResult Function( String message)?  error,TResult Function()?  deleteSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileStateInitial() when initial != null:
return initial();case ProfileStateLoading() when loading != null:
return loading();case ProfileStateLoaded() when loaded != null:
return loaded(_that.data);case ProfileStateError() when error != null:
return error(_that.message);case ProfileStateDeleteSuccess() when deleteSuccess != null:
return deleteSuccess();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( dynamic data)  loaded,required TResult Function( String message)  error,required TResult Function()  deleteSuccess,}) {final _that = this;
switch (_that) {
case ProfileStateInitial():
return initial();case ProfileStateLoading():
return loading();case ProfileStateLoaded():
return loaded(_that.data);case ProfileStateError():
return error(_that.message);case ProfileStateDeleteSuccess():
return deleteSuccess();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( dynamic data)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  deleteSuccess,}) {final _that = this;
switch (_that) {
case ProfileStateInitial() when initial != null:
return initial();case ProfileStateLoading() when loading != null:
return loading();case ProfileStateLoaded() when loaded != null:
return loaded(_that.data);case ProfileStateError() when error != null:
return error(_that.message);case ProfileStateDeleteSuccess() when deleteSuccess != null:
return deleteSuccess();case _:
  return null;

}
}

}

/// @nodoc


class ProfileStateInitial implements ProfileState {
  const ProfileStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class ProfileStateLoading implements ProfileState {
  const ProfileStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class ProfileStateLoaded implements ProfileState {
  const ProfileStateLoaded(this.data);
  

 final  dynamic data;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateLoadedCopyWith<ProfileStateLoaded> get copyWith => _$ProfileStateLoadedCopyWithImpl<ProfileStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStateLoaded&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProfileState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileStateLoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileStateLoadedCopyWith(ProfileStateLoaded value, $Res Function(ProfileStateLoaded) _then) = _$ProfileStateLoadedCopyWithImpl;
@useResult
$Res call({
 dynamic data
});




}
/// @nodoc
class _$ProfileStateLoadedCopyWithImpl<$Res>
    implements $ProfileStateLoadedCopyWith<$Res> {
  _$ProfileStateLoadedCopyWithImpl(this._self, this._then);

  final ProfileStateLoaded _self;
  final $Res Function(ProfileStateLoaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ProfileStateLoaded(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class ProfileStateError implements ProfileState {
  const ProfileStateError(this.message);
  

 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateErrorCopyWith<ProfileStateError> get copyWith => _$ProfileStateErrorCopyWithImpl<ProfileStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileStateErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileStateErrorCopyWith(ProfileStateError value, $Res Function(ProfileStateError) _then) = _$ProfileStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfileStateErrorCopyWithImpl<$Res>
    implements $ProfileStateErrorCopyWith<$Res> {
  _$ProfileStateErrorCopyWithImpl(this._self, this._then);

  final ProfileStateError _self;
  final $Res Function(ProfileStateError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfileStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileStateDeleteSuccess implements ProfileState {
  const ProfileStateDeleteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStateDeleteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.deleteSuccess()';
}


}




// dart format on
