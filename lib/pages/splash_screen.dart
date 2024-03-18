import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/logo.png"),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/loginPage");
            },
            child: const Text(
              "GASTRONAV'A HOŞGELDİNİZ!",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
