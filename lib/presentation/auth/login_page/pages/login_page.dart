import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadleo_techno_machine_task/core/widgets/app_textfield.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_button.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_text.dart';
import 'package:quadleo_techno_machine_task/data/repository_impl/auth_repository_impl.dart';
import 'package:quadleo_techno_machine_task/data/source/auth_source.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/auth_connect.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/bloc/auth_bloc.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/create_account_page/pages/create_account_page.dart';
import 'package:quadleo_techno_machine_task/presentation/home_page/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomTextWidget(text: 'Login', fontSize: 17),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(text: 'Welcome back!', fontSize: 22),
            SizedBox(height: 40),
            AppTextField(
              controller: _usernameController,
              hintText: 'Username',
              preffixIcon: Image.asset('assets/png/at.png'),
              keyboardType: TextInputType.emailAddress,
            ),
            AppTextField(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
              suffixIcon: Image.asset('assets/png/eye.png'),
              preffixIcon: Image.asset('assets/png/password.png'),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 40),
            //login button
            CustomButton(
              text: 'Login',
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            SizedBox(height: 10),
            //forget password
            CustomTextWidget(text: 'Forget Password?', fontSize: 17),
            SizedBox(height: 10),
            //create aacount
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => BlocProvider(
                //       create: (context) =>
                //           AuthBloc(AuthRepositoryImpl(AuthSourceImpl())),
                //       child: CreateAccountPage(),
                //     ),
                //   ),
                // );
                 AuthConnect(authTo: false);
              },
              child: CustomTextWidget(text: 'Create Account', fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
