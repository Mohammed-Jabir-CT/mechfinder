import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;
import 'package:get/get.dart';
import 'package:va/controllers/home_controller.dart';

class MechanicsDetailsController extends GetxController {
  final homeController = Get.find<HomeController>();

  Future<void> sendLocation({required String email}) async {
    try {
      osm.GeoPoint userLocation =
          await homeController.mapController.myLocation();

      Map<String, dynamic> payload = {
        "location": GeoPoint(userLocation.latitude, userLocation.longitude)
      };

      await FirebaseFirestore.instance
          .collection("mechanics")
          .doc(email)
          .collection("notifications")
          .add(payload);

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
}
