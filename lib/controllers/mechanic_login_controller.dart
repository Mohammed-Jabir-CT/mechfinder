import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/mechanics_home.dart';

class MechanicLoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      Get.to(const MechanicsHome());
    } on FirebaseAuthException catch (e) {
      Get.showSnackbar(GetSnackBar(
        margin: const EdgeInsets.all(15),
        borderRadius: 8,
        message: (e.code),
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
      ));
    } catch (e) {
      Get.showSnackbar(const GetSnackBar(
        margin: EdgeInsets.all(15),
        borderRadius: 8,
        message: ('Failed to login. Please try again'),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      ));
    }
  }
}
