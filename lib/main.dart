import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gastro_nav/firebase_options.dart';
import 'package:gastro_nav/pages/auth/login_page.dart';
import 'package:gastro_nav/pages/auth/signup_page.dart';
import 'package:gastro_nav/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GastroNav',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color(0xFF60BA46)),
        useMaterial3: true,
      ),
      routes: {
        "/loginPage": (context) => const LoginPage(),
        "/signUp": (context) => const SignUpPage(),
        "/homePage": (context) => const HomePage(),
      },
      home: const LoginPage(),
    );
  }
}
