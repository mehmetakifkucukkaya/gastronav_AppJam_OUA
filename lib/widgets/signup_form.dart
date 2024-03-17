// ignore_for_file: dead_code, unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  var email, password, kullaniciAdi, sehir, beslenmeTercihi, alerjiDurumu;

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);

    final ekranYuksekligi = ekranBilgisi.size.width;
    final ekranGenisligi = ekranBilgisi.size.width;

    //* Firebase
    final firebaseAuth = FirebaseAuth.instance;

    //* Keys
    var emailController = TextEditingController();
    var sifreController = TextEditingController();
    var kullaniciAdiController = TextEditingController();
    var sehirController = TextEditingController();
    var alerjiController = TextEditingController();
    var beslenmeTercihiController = TextEditingController();

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

          //* Kullanıcı Adı
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: Column(
              children: [
                TextFormField(
                  controller: kullaniciAdiController,
                  decoration: const InputDecoration(
                    hintText: "Kullanıcı Adı",
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
                      return "Bu alan boş bırakılamaz !";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var kullaniciAdi = value!;
                  },
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),

          //* Şehir
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: Column(
              children: [
                TextFormField(
                  controller: sehirController,
                  decoration: const InputDecoration(
                    hintText: "Şehir",
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
                      return "Bu alan boş bırakılamaz !";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    var sehir = value!;
                  },
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),

          //*Alerji Durumu
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: Column(
              children: [
                TextFormField(
                  controller: TextEditingController(text: alerjiDurumu),
                  readOnly: true,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Alerji Durumu"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                title: const Text('Var'),
                                onTap: () {
                                  setState(() {
                                    alerjiDurumu = 'Var';
                                  });
                                  Navigator.of(context).pop();
                                },
                              ),
                              ListTile(
                                title: const Text('Yok'),
                                onTap: () {
                                  setState(() {
                                    alerjiDurumu = 'Yok';
                                  });
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  decoration: const InputDecoration(
                    hintText: "Alerji Durumu",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //* Beslenme Tercihi
          Padding(
            padding: EdgeInsets.all(ekranGenisligi / 40),
            child: Column(
              children: [
                TextFormField(
                  readOnly: true,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Beslenme Tercihi"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                title: const Text('Vejeteryan'),
                                onTap: () {
                                  setState(() {
                                    beslenmeTercihi = 'Vejeteryan';
                                  });
                                  Navigator.of(context).pop();
                                },
                              ),
                              ListTile(
                                title: const Text('Etli Yemekler'),
                                onTap: () {
                                  setState(() {
                                    beslenmeTercihi = 'Etli Yemekler';
                                  });
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  decoration: const InputDecoration(
                    hintText: "Beslenme Tercihi",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  controller: TextEditingController(text: beslenmeTercihi),
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
                onPressed: () async {
                  if (formKeySignUp.currentState!.validate()) {
                    formKeySignUp.currentState!.save();

                    try {
                      var userResult = await firebaseAuth
                          .createUserWithEmailAndPassword(
                              email: email, password: password);

                      //* Yönlendirme yapıyoruz

                      Navigator.pushReplacementNamed(
                          context, "/loginPage");
                    } catch (e) {
                      print(e.toString());
                    }
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
