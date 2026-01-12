import 'package:dartz/dartz.dart';
import 'package:quadleo_techno_machine_task/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthSource {
  Future<Either> userSign({required UserModel userModel});
  Future<Either> createUser({required UserModel userModel});
}

class AuthSourceImpl extends AuthSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<Either> createUser({required UserModel userModel}) async {
    try {
      final res = await _auth.createUserWithEmailAndPassword(
        email: userModel.userName,
        password: userModel.password,
      );

      if (res.user == null) {
        return const Left("User creation failed");
      }

      return Right("User creation success");
    } on FirebaseAuthException catch (e) {
      return Left(e.message ?? "Authentication error");
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either> userSign({required UserModel userModel}) async {
    try {
      final res = await _auth.signInWithEmailAndPassword(
        email: userModel.userName,
        password: userModel.password,
      );

      if (res.user == null) {
        print('Failed');

        return const Left("User login failed");
      }
      print('Success');
      return Right("User login success");
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return Left(e.message ?? "Authentication error");
    } catch (e) {
      print(e.toString());
      return Left(e.toString());
    }
  }
}
