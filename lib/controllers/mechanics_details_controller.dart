import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;
import 'package:get/get.dart';
import 'package:va/controllers/home_controller.dart';

class MechanicsDetailsController extends GetxController {
  final feedbacksSnapshot = Rxn<QuerySnapshot>();

  final homeController = Get.find<HomeController>();

  Future<void> sendLocation({required String email}) async {
    try {
      osm.GeoPoint userLocation =
          await homeController.mapController.myLocation();

      Map<String, dynamic> mechanicPayload = {
        "location": GeoPoint(userLocation.latitude, userLocation.longitude),
        "user_ref": FirebaseFirestore.instance
            .collection("user")
            .doc(FirebaseAuth.instance.currentUser!.email),
        "status": null
      };

      Map<String, dynamic> userPayload = {
        "location": GeoPoint(userLocation.latitude, userLocation.longitude),
        "mechanic_ref":
        FirebaseFirestore.instance.collection("mechanics").doc(email),
        "status": null
      };

      await FirebaseFirestore.instance
          .collection("mechanics")
          .doc(email)
          .collection("notifications")
          .doc(FirebaseAuth.instance.currentUser!.email)
          .set(mechanicPayload);

      await FirebaseFirestore.instance
          .collection("user")
          .doc(FirebaseAuth.instance.currentUser!.email)
          .collection("notifications")
          .doc(email)
          .set(userPayload);

      Get.showSnackbar(
        const GetSnackBar(
          title: "Success",
          message: 'Location successfully sent.',
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      Get.showSnackbar(const GetSnackBar(
        margin: EdgeInsets.all(15),
        borderRadius: 8,
        message: ('Failed to send location. Please try again'),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<void> fetchFeedbacks({required String email}) async {
    feedbacksSnapshot.value = await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(email)
        .collection("feedbacks")
        .get();
  }
}
