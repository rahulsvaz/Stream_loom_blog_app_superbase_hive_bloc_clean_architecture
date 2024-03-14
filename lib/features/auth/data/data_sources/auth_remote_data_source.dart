
import 'package:stream_loom/core/error/exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailAndPassword(
      {required String name, required String email, required String password});

  Future<String> signInWithEmailAndPassword(
      {required String email, required String password});
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;

  AuthRemoteDataSourceImp(this.supabaseClient);

  @override
  Future<String> signInWithEmailAndPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailAndPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        data: {'name': name},
      );

      if (response.user == null) {
        throw ServerException('User is null');
      }

      return response.user!.id;
    } catch (e) {
      throw ServerException(
        e.toString(),
      );  
    }
  }
}
