import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/core/widgets/app_textfield.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_text.dart';

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
            //login button
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Color(0xFF4943D3),
                borderRadius: BorderRadius.circular(23),
              ),
              child: Center(child: CustomTextWidget(text: 'Login')),
            ),
            //create aacount
            //forget password
          ],
        ),
      ),
    );
  }
}
