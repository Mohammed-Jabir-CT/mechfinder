import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportController extends GetxController {
  final arguments = Get.arguments as Map;

  final reportController = TextEditingController();

  Future<void> sendReport() async {
    try {
      DocumentReference mechanicRef =
          arguments["mechanicRef"] as DocumentReference;

      DocumentReference userRef = FirebaseFirestore.instance
          .collection("user")
          .doc(FirebaseAuth.instance.currentUser!.email);

      Map<String, dynamic> payload = {
        "report": reportController.text,
        "userRef": userRef,
        "mechanicRef": mechanicRef,
      };

      await FirebaseFirestore.instance.collection("reports").add(payload);

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
