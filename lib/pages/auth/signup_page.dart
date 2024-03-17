import 'package:flutter/material.dart';
import 'package:gastro_nav/widgets/signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //* Avatar
                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://cdn.vectorstock.com/i/1000x1000/91/32/face-young-man-in-frame-circular-avatar-character-vector-28829132.webp"),
                      ),
                    ),
                    Text(
                      "Yeni Profil Oluşturalım",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),

                //* Form
                Column(
                  children: [SignupForm()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
