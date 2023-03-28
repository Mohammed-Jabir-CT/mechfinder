import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:va/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  void createuser() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        Get.showSnackbar(const GetSnackBar(
          margin: EdgeInsets.all(15),
          borderRadius: 8,
          message:
              ('There already exists an account with the given email address.'),
          duration: Duration(seconds: 3),
          backgroundColor: Colors.red,
        ));
      }
    }
  }

  void registeruser() async {
    if (formkey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('User').doc(email.text).set({
        'Email': email,
        "password": password,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 130.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          controller: email,
                          decoration: const InputDecoration(
                            hintText: "E-Mail",
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Password';
                            } else if (value.length < 6) {
                              return 'Password is too short';
                            } else {
                              return null;
                            }
                          }),
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          validator: ((value) {
                            if (value != password.text) {
                              return 'The password don\'t match ';
                            } else {
                              return null;
                            }
                          }),
                          controller: TextEditingController(),
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Confirm Password",
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              createuser();
                              registeruser();
                            },
                            child: const Text("Sign Up"),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "or",
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(Login());
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amberAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
