import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserFeedbackController extends GetxController {
  final arguments = Get.arguments as Map;

  final feedbackController = TextEditingController();

  Future<void> sendFeedback() async {
    try {
      DocumentReference mechanicRef =
          arguments["mechanicRef"] as DocumentReference;

      DocumentReference userRef = FirebaseFirestore.instance
          .collection("user")
          .doc(FirebaseAuth.instance.currentUser!.email);

      Map<String, dynamic> payload = {
        "feedback": feedbackController.text,
        "userRef": userRef
      };

      await mechanicRef
          .collection("feedbacks")
          .doc(FirebaseAuth.instance.currentUser!.email)
          .set(payload);

      Get.showSnackbar(
        const GetSnackBar(
          message: "Success",
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      Get.showSnackbar(
        const GetSnackBar(
          message: "Failed",
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
