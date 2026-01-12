import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/create_account_page/pages/create_account_page.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/login_page/pages/login_page.dart';

class AuthConnect extends StatelessWidget {
  const AuthConnect({super.key, required this.authTo});

  final bool authTo;

  @override
  Widget build(BuildContext context) {
    if (authTo == true) {
      return LoginPage();
    } else {
      return CreateAccountPage();
    }
  }
}
