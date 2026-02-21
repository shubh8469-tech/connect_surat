import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/features/auth/domain/entities/user_entitiy.dart';
import 'package:untitled/features/auth/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  
  AuthBloc(this._authRepository) : super(_Initial()) {
    final StreamSubscription<UserEntity?> _authStateSubscription;

    _authStateSubscription = _authRepository.authStateChange.listen((user) {
      add(AuthEvent.statusChanged(user));
    },);

    on<_GoogleLoginRequested>((event, emit) async {
       emit(const AuthState.loading());
       final result = await _authRepository.googleLogin();
       result.fold(
        (failure) => emit(AuthState.error(failure.message ?? 'Unknown error')),
        (user) => emit(AuthState.authenticated(user)),
       );
    });

    on<_LoginRequested>((event, emit) async {
      emit(const AuthState.loading());
      final result = await _authRepository.login(email: event.email, password: event.password);
      result.fold(
        (failure) => emit(AuthState.error(failure.message ?? 'Unknown error')),
        (user) => emit(AuthState.authenticated(user)),
      );
    });
    
    on<_SignUpRequested>((event, emit) async {
      emit(AuthState.loading());
      final result = await _authRepository.signUp(name: event.name, email: event.email, password: event.password);
      result.fold(
        (failure) => emit(AuthState.error(failure.message ?? 'Unknown error')),
        (user) => emit(AuthState.authenticated(user)),
      );
    });

    on<_LogoutRequested>((event, emit) async {
      emit(AuthState.loading());
      final result = await _authRepository.logout();
      result.fold(
        (failure) => emit(AuthState.error(failure.message ?? 'Unknown error')),
        (user) => emit(AuthState.unauthenticated()),
      );
    });
    
    on<_DeleteAccountRequested>((event, emit) async {
      emit(AuthState.loading());
      final result = await _authRepository.deleteAccount();
      result.fold(
        (failure) => emit(AuthState.error(failure.message ?? 'Unknown error')),
        (user) => emit(AuthState.unauthenticated()),
      );
    });
    
    on<_SendPasswordResetEmailRequested>((event, emit) async {
      emit(AuthState.loading());
      final result = await _authRepository.sendPasswordResetEmail(email: event.email);
      result.fold(
        (failure) => emit(AuthState.error(failure.message ?? 'Unknown error')),
        (user) => emit(AuthState.unauthenticated()),
      );
    });

    on<_StatusChanged>((event, emit) {
      if(event.user == null){
        emit(const AuthState.unauthenticated());
      } else {
        emit(AuthState.authenticated(event.user!));
      }
    });

    @override
    Future<void> close() async{
      _authStateSubscription.cancel();
      return super.close();
    }
  }
} 
