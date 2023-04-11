import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMechanicsDetailsController extends GetxController {
  Future<void> verifyMechanic({required String id}) async {
    try {
      await FirebaseFirestore.instance
          .collection("mechanics")
          .doc(id)
          .update({"verified": true});

      Get.showSnackbar(const GetSnackBar(
        margin: EdgeInsets.all(15),
        borderRadius: 8,
        message: ('Success'),
        duration: Duration(seconds: 3),
      ));
    } catch (e) {
      Get.showSnackbar(const GetSnackBar(
        margin: EdgeInsets.all(15),
        borderRadius: 8,
        message: ('Failed'),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      ));
    }
  }
}
