import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadleo_techno_machine_task/data/repository_impl/auth_repository_impl.dart';
import 'package:quadleo_techno_machine_task/data/source/auth_source.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/auth_connect.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/bloc/auth_bloc.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/login_page/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => BlocProvider(
      //       create: (context) => AuthBloc(AuthRepositoryImpl(AuthSourceImpl())),
      //       child: LoginPage(),
      //     ),
      //   ),
      // );
       AuthConnect(authTo: true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Splash screen')));
  }
}
