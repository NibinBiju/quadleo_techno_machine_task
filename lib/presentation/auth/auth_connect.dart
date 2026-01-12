import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadleo_techno_machine_task/data/repository_impl/auth_repository_impl.dart';
import 'package:quadleo_techno_machine_task/data/source/auth_source.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/bloc/auth_bloc.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/create_account_page/pages/create_account_page.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/login_page/pages/login_page.dart';

class AuthConnect extends StatelessWidget {
  const AuthConnect({super.key, required this.authTo});

  final bool authTo;

  @override
  Widget build(BuildContext context) {
    return authTo
        ? BlocProvider(
            create: (context) => AuthBloc(AuthRepositoryImpl(AuthSourceImpl())),
            child: LoginPage(),
          )
        : BlocProvider(
            create: (context) => AuthBloc(AuthRepositoryImpl(AuthSourceImpl())),
            child: CreateAccountPage(),
          );
  }
}
