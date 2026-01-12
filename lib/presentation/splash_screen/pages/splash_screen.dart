import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/presentation/login_page/pages/login_page.dart';

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
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Splash screen')));
  }
}
