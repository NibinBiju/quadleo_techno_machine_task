import 'package:dartz/dartz.dart';
import 'package:quadleo_techno_machine_task/data/model/user_model.dart';

abstract class AuthRepository {
  Future<Either> userSign({required UserModel userModel});
  Future<Either> createUser({required UserModel userModel});
}
