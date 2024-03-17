import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gastro_nav/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // var ekranBilgisi = MediaQuery.of(context);

    // final ekranYuksekligi = ekranBilgisi.size.height;
    // final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                //* Logo ve Yazı
                Column(
                  children: [
                    SizedBox(
                      width: 220,
                      height: 200,
                      child: Image.asset(
                        "assets/logo.png",
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mailinizi ve şifrenizi giriniz. Hesabınız yoksa yeni bir hesap oluşturunuz.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                //* Form ve Butonlar
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
