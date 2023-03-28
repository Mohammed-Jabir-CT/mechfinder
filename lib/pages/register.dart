import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/login.dart';
import 'package:va/pages/mechanic_signup.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            child: Column(
              children: [
                Column(
                  children: const [
                    Text(
                      "Register",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const MechanicSignup());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent,
                          ),
                          child: const Text(
                            "Register As A Mechanic",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        height: 50.0,
                        width: 250.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => Login());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent,
                          ),
                          child: const Text(
                            "Register As A User",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
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
    );
  }
}
