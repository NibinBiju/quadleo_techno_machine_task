import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/core/widgets/app_textfield.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_button.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_text.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomTextWidget(text: 'Create Account', fontSize: 17),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(text: 'Welcome!', fontSize: 22),
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
              text: 'Create',
            ),
            SizedBox(height: 10),

            //create aacount
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: CustomTextWidget(text: 'User Login', fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
