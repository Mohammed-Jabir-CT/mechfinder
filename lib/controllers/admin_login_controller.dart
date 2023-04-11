import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/admin_home.dart';

class AdminLoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    try {
      DocumentSnapshot adminSnapshot = await FirebaseFirestore.instance
          .collection("admins")
          .doc(emailController.text)
          .get();

      if (!adminSnapshot.exists) {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Error",
            message: "Not admin",
            duration: Duration(seconds: 2),
          ),
        );

        return;
      }

      if (passwordController.text != adminSnapshot.get("password")) {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Error",
            message: "Wrong password",
            duration: Duration(seconds: 2),
          ),
        );

        return;
      }

      Get.to(() => const AdminHome());
    } catch (e) {
      Get.showSnackbar(
        const GetSnackBar(
          title: "Error",
          message: "Failed to login",
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
