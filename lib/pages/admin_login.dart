import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/Forgotpassword.dart';

import '../controllers/admin_login_controller.dart';

class AdminLogin extends StatelessWidget {
  AdminLogin({Key? key}) : super(key: key);

  final controller = Get.put(AdminLoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "MechFinder",
            style: TextStyle(
              fontFamily: "Poppins",
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
        resizeToAvoidBottomInset: false,
        body: Form(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0),
            child: Center(
              child: Expanded(
                child: Column(
                  children: [
                    const Text(
                      "Admin Login",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            controller: controller.emailController,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: "E-mail",
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: controller.passwordController,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Password';
                              } else {
                                return null;
                              }
                            }),
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
                                controller.login();
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
