import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadleo_techno_machine_task/data/model/user_model.dart';
import 'package:quadleo_techno_machine_task/domain/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  void onChange(Change<AuthState> change) {
    print("New State:$change");
    super.onChange(change);
  }

  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    //user signin
    userSignInBloc();
    //user create
    userCreateBloc();
  }

  void userSignInBloc() {
    return on<UserSignInEvent>((event, emit) async {
      emit(AuthLoading());
      var returnedData = await authRepository.userSign(
        userModel: event.userModel,
      );

      returnedData.fold(
        (error) {
          emit(AuthFailed(message: error));
        },
        (success) {
          emit(AuthSuccess(message: success));
        },
      );
    });
  }

  void userCreateBloc() {
    return on<UserCreateEvent>((event, emit) async {
      emit(AuthLoading());
      var returnedData = await authRepository.createUser(
        userModel: event.userModel,
      );
      returnedData.fold(
        (error) {
          emit(AuthFailed(message: error));
        },
        (success) {
          emit(AuthSuccess(message: success));
        },
      );
    });
  }
}
