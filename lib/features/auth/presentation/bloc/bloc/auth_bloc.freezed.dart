// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StatusChanged value)?  statusChanged,TResult Function( _LoginRequested value)?  loginRequested,TResult Function( _GoogleLoginRequested value)?  googleLoginRequested,TResult Function( _SignUpRequested value)?  signUpRequested,TResult Function( _LogoutRequested value)?  logoutRequested,TResult Function( _DeleteAccountRequested value)?  deleteAccountRequested,TResult Function( _SendPasswordResetEmailRequested value)?  sendPasswordResetEmailRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusChanged() when statusChanged != null:
return statusChanged(_that);case _LoginRequested() when loginRequested != null:
return loginRequested(_that);case _GoogleLoginRequested() when googleLoginRequested != null:
return googleLoginRequested(_that);case _SignUpRequested() when signUpRequested != null:
return signUpRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _DeleteAccountRequested() when deleteAccountRequested != null:
return deleteAccountRequested(_that);case _SendPasswordResetEmailRequested() when sendPasswordResetEmailRequested != null:
return sendPasswordResetEmailRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StatusChanged value)  statusChanged,required TResult Function( _LoginRequested value)  loginRequested,required TResult Function( _GoogleLoginRequested value)  googleLoginRequested,required TResult Function( _SignUpRequested value)  signUpRequested,required TResult Function( _LogoutRequested value)  logoutRequested,required TResult Function( _DeleteAccountRequested value)  deleteAccountRequested,required TResult Function( _SendPasswordResetEmailRequested value)  sendPasswordResetEmailRequested,}){
final _that = this;
switch (_that) {
case _StatusChanged():
return statusChanged(_that);case _LoginRequested():
return loginRequested(_that);case _GoogleLoginRequested():
return googleLoginRequested(_that);case _SignUpRequested():
return signUpRequested(_that);case _LogoutRequested():
return logoutRequested(_that);case _DeleteAccountRequested():
return deleteAccountRequested(_that);case _SendPasswordResetEmailRequested():
return sendPasswordResetEmailRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StatusChanged value)?  statusChanged,TResult? Function( _LoginRequested value)?  loginRequested,TResult? Function( _GoogleLoginRequested value)?  googleLoginRequested,TResult? Function( _SignUpRequested value)?  signUpRequested,TResult? Function( _LogoutRequested value)?  logoutRequested,TResult? Function( _DeleteAccountRequested value)?  deleteAccountRequested,TResult? Function( _SendPasswordResetEmailRequested value)?  sendPasswordResetEmailRequested,}){
final _that = this;
switch (_that) {
case _StatusChanged() when statusChanged != null:
return statusChanged(_that);case _LoginRequested() when loginRequested != null:
return loginRequested(_that);case _GoogleLoginRequested() when googleLoginRequested != null:
return googleLoginRequested(_that);case _SignUpRequested() when signUpRequested != null:
return signUpRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _DeleteAccountRequested() when deleteAccountRequested != null:
return deleteAccountRequested(_that);case _SendPasswordResetEmailRequested() when sendPasswordResetEmailRequested != null:
return sendPasswordResetEmailRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserEntity? user)?  statusChanged,TResult Function( String email,  String password)?  loginRequested,TResult Function()?  googleLoginRequested,TResult Function( String name,  String email,  String password)?  signUpRequested,TResult Function()?  logoutRequested,TResult Function()?  deleteAccountRequested,TResult Function( String email)?  sendPasswordResetEmailRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusChanged() when statusChanged != null:
return statusChanged(_that.user);case _LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case _GoogleLoginRequested() when googleLoginRequested != null:
return googleLoginRequested();case _SignUpRequested() when signUpRequested != null:
return signUpRequested(_that.name,_that.email,_that.password);case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _DeleteAccountRequested() when deleteAccountRequested != null:
return deleteAccountRequested();case _SendPasswordResetEmailRequested() when sendPasswordResetEmailRequested != null:
return sendPasswordResetEmailRequested(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserEntity? user)  statusChanged,required TResult Function( String email,  String password)  loginRequested,required TResult Function()  googleLoginRequested,required TResult Function( String name,  String email,  String password)  signUpRequested,required TResult Function()  logoutRequested,required TResult Function()  deleteAccountRequested,required TResult Function( String email)  sendPasswordResetEmailRequested,}) {final _that = this;
switch (_that) {
case _StatusChanged():
return statusChanged(_that.user);case _LoginRequested():
return loginRequested(_that.email,_that.password);case _GoogleLoginRequested():
return googleLoginRequested();case _SignUpRequested():
return signUpRequested(_that.name,_that.email,_that.password);case _LogoutRequested():
return logoutRequested();case _DeleteAccountRequested():
return deleteAccountRequested();case _SendPasswordResetEmailRequested():
return sendPasswordResetEmailRequested(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserEntity? user)?  statusChanged,TResult? Function( String email,  String password)?  loginRequested,TResult? Function()?  googleLoginRequested,TResult? Function( String name,  String email,  String password)?  signUpRequested,TResult? Function()?  logoutRequested,TResult? Function()?  deleteAccountRequested,TResult? Function( String email)?  sendPasswordResetEmailRequested,}) {final _that = this;
switch (_that) {
case _StatusChanged() when statusChanged != null:
return statusChanged(_that.user);case _LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case _GoogleLoginRequested() when googleLoginRequested != null:
return googleLoginRequested();case _SignUpRequested() when signUpRequested != null:
return signUpRequested(_that.name,_that.email,_that.password);case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _DeleteAccountRequested() when deleteAccountRequested != null:
return deleteAccountRequested();case _SendPasswordResetEmailRequested() when sendPasswordResetEmailRequested != null:
return sendPasswordResetEmailRequested(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _StatusChanged implements AuthEvent {
  const _StatusChanged(this.user);
  

 final  UserEntity? user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusChangedCopyWith<_StatusChanged> get copyWith => __$StatusChangedCopyWithImpl<_StatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusChanged&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthEvent.statusChanged(user: $user)';
}


}

/// @nodoc
abstract mixin class _$StatusChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$StatusChangedCopyWith(_StatusChanged value, $Res Function(_StatusChanged) _then) = __$StatusChangedCopyWithImpl;
@useResult
$Res call({
 UserEntity? user
});




}
/// @nodoc
class __$StatusChangedCopyWithImpl<$Res>
    implements _$StatusChangedCopyWith<$Res> {
  __$StatusChangedCopyWithImpl(this._self, this._then);

  final _StatusChanged _self;
  final $Res Function(_StatusChanged) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_StatusChanged(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}


}

/// @nodoc


class _LoginRequested implements AuthEvent {
  const _LoginRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestedCopyWith<_LoginRequested> get copyWith => __$LoginRequestedCopyWithImpl<_LoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.loginRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginRequestedCopyWith(_LoginRequested value, $Res Function(_LoginRequested) _then) = __$LoginRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginRequestedCopyWithImpl<$Res>
    implements _$LoginRequestedCopyWith<$Res> {
  __$LoginRequestedCopyWithImpl(this._self, this._then);

  final _LoginRequested _self;
  final $Res Function(_LoginRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GoogleLoginRequested implements AuthEvent {
  const _GoogleLoginRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleLoginRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.googleLoginRequested()';
}


}




/// @nodoc


class _SignUpRequested implements AuthEvent {
  const _SignUpRequested({required this.name, required this.email, required this.password});
  

 final  String name;
 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRequestedCopyWith<_SignUpRequested> get copyWith => __$SignUpRequestedCopyWithImpl<_SignUpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRequested&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password);

@override
String toString() {
  return 'AuthEvent.signUpRequested(name: $name, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignUpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignUpRequestedCopyWith(_SignUpRequested value, $Res Function(_SignUpRequested) _then) = __$SignUpRequestedCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password
});




}
/// @nodoc
class __$SignUpRequestedCopyWithImpl<$Res>
    implements _$SignUpRequestedCopyWith<$Res> {
  __$SignUpRequestedCopyWithImpl(this._self, this._then);

  final _SignUpRequested _self;
  final $Res Function(_SignUpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,}) {
  return _then(_SignUpRequested(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LogoutRequested implements AuthEvent {
  const _LogoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutRequested()';
}


}




/// @nodoc


class _DeleteAccountRequested implements AuthEvent {
  const _DeleteAccountRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAccountRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.deleteAccountRequested()';
}


}




/// @nodoc


class _SendPasswordResetEmailRequested implements AuthEvent {
  const _SendPasswordResetEmailRequested({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendPasswordResetEmailRequestedCopyWith<_SendPasswordResetEmailRequested> get copyWith => __$SendPasswordResetEmailRequestedCopyWithImpl<_SendPasswordResetEmailRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendPasswordResetEmailRequested&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.sendPasswordResetEmailRequested(email: $email)';
}


}

/// @nodoc
abstract mixin class _$SendPasswordResetEmailRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SendPasswordResetEmailRequestedCopyWith(_SendPasswordResetEmailRequested value, $Res Function(_SendPasswordResetEmailRequested) _then) = __$SendPasswordResetEmailRequestedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$SendPasswordResetEmailRequestedCopyWithImpl<$Res>
    implements _$SendPasswordResetEmailRequestedCopyWith<$Res> {
  __$SendPasswordResetEmailRequestedCopyWithImpl(this._self, this._then);

  final _SendPasswordResetEmailRequested _self;
  final $Res Function(_SendPasswordResetEmailRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_SendPasswordResetEmailRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Authenticated value)?  authenticated,TResult Function( _Unauthenticated value)?  unauthenticated,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Authenticated value)  authenticated,required TResult Function( _Unauthenticated value)  unauthenticated,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Authenticated():
return authenticated(_that);case _Unauthenticated():
return unauthenticated(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Authenticated value)?  authenticated,TResult? Function( _Unauthenticated value)?  unauthenticated,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user)?  authenticated,TResult Function()?  unauthenticated,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Authenticated() when authenticated != null:
return authenticated(_that.user);case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user)  authenticated,required TResult Function()  unauthenticated,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Authenticated():
return authenticated(_that.user);case _Unauthenticated():
return unauthenticated();case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user)?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Authenticated() when authenticated != null:
return authenticated(_that.user);case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _Authenticated implements AuthState {
  const _Authenticated(this.user);
  

 final  UserEntity user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatedCopyWith<_Authenticated> get copyWith => __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(_Authenticated value, $Res Function(_Authenticated) _then) = __$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(this._self, this._then);

  final _Authenticated _self;
  final $Res Function(_Authenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Authenticated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class _Unauthenticated implements AuthState {
  const _Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc


class _Error implements AuthState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
