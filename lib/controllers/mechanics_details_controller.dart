import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:va/controllers/home_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;

class MechanicsDetailsController extends GetxController {
  final homeController = Get.find<HomeController>();
  
  Future<void> sendLocation({required String email}) async {
    osm.GeoPoint userLocation = await homeController.mapController.myLocation();

    Map<String, dynamic> payload = {
      "location": GeoPoint(userLocation.latitude, userLocation.longitude)
    };
  final currentuser = FirebaseAuth.instance.currentUser!.email;
    await FirebaseFirestore.instance.collection("mechanics").doc(currentuser).collection("notifications").add(payload);
  }
}