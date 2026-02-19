import 'package:dartz/dartz.dart';
import 'package:untitled/features/auth/domain/entities/user_entitiy.dart';

import '../../../../core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure,UserEntity>> login({required String email, required String password});
  Future<Either<Failure, UserEntity>> signUp({required String name, required String email, required String password});
}