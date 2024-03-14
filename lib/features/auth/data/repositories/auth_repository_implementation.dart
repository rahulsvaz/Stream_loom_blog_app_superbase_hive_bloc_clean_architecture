
import 'package:fpdart/fpdart.dart';
import 'package:stream_loom/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository{
  @override
  Future<Either<Error, String>> signInWithEmailAndPassword({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Error, String>> signUpWithEmailAndPassword({required String name, required String email, required String password}) {
    throw UnimplementedError();
  }
  
}