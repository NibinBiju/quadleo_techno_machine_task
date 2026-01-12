import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quadleo_techno_machine_task/core/widgets/app_textfield.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_button.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_text.dart';
import 'package:quadleo_techno_machine_task/data/model/user_model.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/auth_connect.dart';
import 'package:quadleo_techno_machine_task/presentation/auth/bloc/auth_bloc.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
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
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.message)));
                }
                if (state is AuthFailed) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.message)));
                }
              },
              builder: (context, state) {
                return CustomButton(
                  text: state is AuthLoading ? 'Loading...' : 'Create',
                  onTap: () {
                    context.read<AuthBloc>().add(
                      UserCreateEvent(
                        userModel: UserModel(
                          userName: _usernameController.text.trim(),
                          password: _passwordController.text.trim(),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 10),

            //create aacount
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AuthConnect(authTo: true),
                  ),
                );
              },
              child: CustomTextWidget(text: 'User Login', fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
