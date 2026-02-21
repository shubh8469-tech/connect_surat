import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/core/error/failure.dart';
import 'package:untitled/features/auth/data/model/user_model.dart';
import 'package:untitled/features/auth/domain/entities/user_entitiy.dart';
import 'package:untitled/features/auth/domain/repositories/auth_repository.dart';


final List<String> _googleSignInScopes = [
  'https://www.googleapis.com/auth/userinfo.email',
  'https://www.googleapis.com/auth/userinfo.profile',
  'https://www.googleapis.com/auth/drive.readonly',
];

class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  GoogleSignInAccount? _currentGoogleAccount;

  GoogleSignInAccount? get currentGoogleAccount => _currentGoogleAccount;

  AuthRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
  }) : _firebaseAuth = firebaseAuth,
       _firestore = firestore,
       _googleSignIn = googleSignIn;

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      final User? firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        return const Left(AuthFailure(message: 'Login failed'));
      }
      return Right(
        UserEntity(
          uid: firebaseUser.uid,
          name: firebaseUser.displayName ?? '',
          email: firebaseUser.email ?? '',
          phone: firebaseUser.phoneNumber ?? '',
          image: firebaseUser.photoURL ?? '',
        ),
      );
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure(message: e.message ?? 'Firebase sign-in failed'));
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> googleLogin() async {
    try {
      await _googleSignIn.initialize();
      final GoogleSignInAccount googleUser = await _googleSignIn.authenticate(
        scopeHint: _googleSignInScopes,
      );
      _currentGoogleAccount = googleUser;
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;
      final idToken = googleAuth.idToken;
      if (idToken == null) {
        return const Left(
          AuthFailure(message: 'Google Sign-in: no id token received'),
        );
      }
      final credential = GoogleAuthProvider.credential(idToken: idToken);
      final UserCredential userCredential = await _firebaseAuth
          .signInWithCredential(credential);
      final User? firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        return const Left(
          AuthFailure(message: 'Google Sign-in: no Firebase user'),
        );
      }
      final UserEntity entity = UserModel(
        uid: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email ?? '',
        phone: '',
        image: firebaseUser.photoURL ?? '',
      );
      return Right(entity);
    } on GoogleSignInException catch (e) {
      return Left(
        AuthFailure(message: e.description ?? 'Google Sign-in failed'),
      );
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure(message: e.message ?? 'Firebase sign-in failed'));
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    _currentGoogleAccount = null;
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    return const Right(null);
  }

  @override
  Future<Either<Failure, Unit>> sendPasswordResetEmail({
    required String email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(
        AuthFailure(message: e.message ?? "Error sending reset email"),
      );
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        return const Left(AuthFailure(message: 'Signup failed'));
      }
      await firebaseUser.updateDisplayName(name);
      await firebaseUser.reload();
      final User? updatedUser = _firebaseAuth.currentUser;
      if (updatedUser == null) {
        return Right(
          UserEntity(
            uid: firebaseUser.uid,
            name: firebaseUser.displayName ?? '',
            email: firebaseUser.email ?? '',
            phone: firebaseUser.phoneNumber ?? '',
            image: firebaseUser.photoURL ?? '',
          ),
        );
      } else {
        return Right(
          UserEntity(
            uid: updatedUser.uid,
            name: updatedUser.displayName ?? '',
            email: updatedUser.email ?? '',
            phone: firebaseUser.phoneNumber ?? '',
            image: firebaseUser.photoURL ?? '',
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure(message: e.message ?? 'Firebase sign-up failed'));
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteAccount() async {
    try {
      await _firebaseAuth.currentUser?.delete();
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(AuthFailure(message: e.message ?? 'Firebase delete account failed'));
    } catch (e) {
      return Left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Stream<UserEntity?> get authStateChange {
    return _firebaseAuth.authStateChanges().map((user){
      if(user == null){
        return null;
      }
      return UserModel(
        uid: user.uid,
        name: user.displayName ?? '',
        email: user.email ?? '',
        phone: user.phoneNumber ?? '',
        image: user.photoURL ?? '',
      );
    });
  }
}
