part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.statusChanged(UserEntity? user) = _StatusChanged;
  const factory AuthEvent.loginRequested({required String email,required String password,}) = _LoginRequested;
  const factory AuthEvent.googleLoginRequested() = _GoogleLoginRequested;
  const factory AuthEvent.signUpRequested({required String name,required String email,required String password,}) = _SignUpRequested;
  const factory AuthEvent.logoutRequested() = _LogoutRequested;
  const factory AuthEvent.deleteAccountRequested() = _DeleteAccountRequested;
  const factory AuthEvent.sendPasswordResetEmailRequested({required String email,}) = _SendPasswordResetEmailRequested;
}