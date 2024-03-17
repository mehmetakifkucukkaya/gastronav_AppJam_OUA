// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late String email, password;

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.width;
    final ekranGenisligi = ekranBilgisi.size.width;

    //* Keys
    var emailAdiController = TextEditingController();
    var sifreController = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          //* Email
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: TextFormField(
              controller: emailAdiController,
              decoration: const InputDecoration(
                hintText: "Email",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
              ),
              validator: (emailAdiController) {
                if (emailAdiController!.isEmpty) {
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

                //* Şifremi Unuttum
                GestureDetector(
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Şifremi Unuttum",
                      style: TextStyle(color: Color(0xFF60BA46)),
                    ),
                  ),
                ),
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
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

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
                  "Giriş Yap",
                  style: TextStyle(
                      color: Colors.white, fontSize: ekranGenisligi / 26),
                ),
              ),
            ),
          ),

          const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xFF60BA46),
            size: 40,
          ),

          //* Kayıt Ol Yazısı
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hesabınız yok mu ? ",
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              GestureDetector(
                child: const Text(
                  "Kayıt Ol",
                  style: TextStyle(
                    color: Color(0xFF60BA46),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
