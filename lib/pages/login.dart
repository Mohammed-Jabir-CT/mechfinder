import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:va/pages/Forgotpassword.dart';
import 'package:va/pages/home.dart';
import 'package:va/pages/sign_up.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  void signin() async {
    try {
      if (formkey.currentState!.validate()) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email.text, password: password.text);
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          Get.showSnackbar(
            const GetSnackBar(
              margin: EdgeInsets.all(15),
              borderRadius: 8,
              message:
                  ('Your username or password is incorrect. Please try again.'),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.red,
            ),
          );
          break;

        case "wrong-password":
          Get.showSnackbar(
            const GetSnackBar(
              margin: EdgeInsets.all(15),
              borderRadius: 8,
              message: ('The password is invalid for the given email'),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.red,
            ),
          );
          break;

        case "user-not-found":
          Get.showSnackbar(
            const GetSnackBar(
              margin: EdgeInsets.all(15),
              borderRadius: 8,
              message: ('There is no user corresponding to the given email.'),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.red,
            ),
          );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return Home();
               // the user has logged in , navigate to homepage.
            } else {
              return Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0),
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 176.0,
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
                                  hintText: "E-mail",
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              TextFormField(
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Password';
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
                              TextButton(
                                onPressed: () {
                                  Get.to(() => const ForgotPassword());
                                },
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    signin();
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins",
                                        fontSize: 18.0),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Does not have an account?",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(()=> const SignUp());
                                    },
                                    child: const Text(
                                      "Sign up",
                                      style: TextStyle(
                                        color: Colors.amberAccent,
                                        fontWeight: FontWeight.bold,
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
              );
            }
          }),
    );
  }
}
