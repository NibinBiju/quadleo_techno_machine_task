import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/firebase_options.dart';
import 'package:quadleo_techno_machine_task/presentation/splash_screen/pages/splash_screen.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quadleo Techno Machine Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        fontFamily: 'Montserrat',
      ),
      home: SplashScreen(),
    );
  }
}
