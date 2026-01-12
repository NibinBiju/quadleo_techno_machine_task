import 'package:dartz/dartz.dart';
import 'package:quadleo_techno_machine_task/data/model/user_model.dart';
import 'package:quadleo_techno_machine_task/data/source/auth_source.dart';
import 'package:quadleo_techno_machine_task/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthSource _authSource;

  AuthRepositoryImpl(this._authSource);

  @override
  Future<Either> userSign({required UserModel userModel}) async {
    return await _authSource.userSign(userModel: userModel);
  }

  @override
  Future<Either> createUser({required UserModel userModel}) async {
    return await _authSource.createUser(userModel: userModel);
  }
}
