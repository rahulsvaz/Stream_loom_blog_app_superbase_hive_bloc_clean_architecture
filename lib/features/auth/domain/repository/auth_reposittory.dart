import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Error, String>> signUpWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Error, String>> signInWithEmailAndPassword({
     required String email,
    required String password,
  });
}
