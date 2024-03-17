// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late String email, password;

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.width;
    final ekranGenisligi = ekranBilgisi.size.width;

    //* Keys
    var emailController = TextEditingController();
    var sifreController = TextEditingController();

    var formKeySignUp = GlobalKey<FormState>();

    return Form(
      key: formKeySignUp,
      child: Column(
        children: [
          //* Email
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
              ),
              validator: (emailController) {
                if (emailController!.isEmpty) {
                  return "Email alanı boş bırakılamaz !";
                }
                return null;
              },
              onSaved: (value) {
                email = value!;
              },
            ),
          ),

          //* Sifre
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: Column(
              children: [
                TextFormField(
                  controller: sifreController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  validator: (sifreController) {
                    if (sifreController!.isEmpty) {
                      return "Şifre boş bırakılamaz !";
                    }

                    if (sifreController.length < 6) {
                      return "Şifreniz en az 6 karakter olmalıdır !";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),

          //*Button
          Padding(
            padding: EdgeInsets.all(ekranYuksekligi / 50),
            child: SizedBox(
              height: ekranYuksekligi / 10,
              width: ekranGenisligi / 1.4,
              child: TextButton(
                onPressed: () {
                  if (formKeySignUp.currentState!.validate()) {
                    formKeySignUp.currentState!.save();

                    print("Email: $email Password: $password");
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF60BA46)),
                ),
                child: Text(
                  "Kayıt Ol",
                  style: TextStyle(
                      color: Colors.white, fontSize: ekranGenisligi / 26),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
