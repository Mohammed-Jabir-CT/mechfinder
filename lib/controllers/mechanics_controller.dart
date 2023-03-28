import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;
import 'package:get/get.dart';
import 'package:va/controllers/home_controller.dart';

class MechanicsController extends GetxController {
  RxList mechanics = [].obs;
  Rx<osm.GeoPoint> location = osm.GeoPoint(latitude: 0, longitude: 0).obs;

  final homeController = Get.find<HomeController>();

  Future<void> fetchMechanics({required String mechanicType}) async {
    QuerySnapshot mechanicsSnapshot = await FirebaseFirestore.instance
        .collection("mechanics")
        .where("mechanicType", isEqualTo: mechanicType)
        .get();

    List data = mechanicsSnapshot.docs.map((e) => e.data()).toList();

    mechanics.value = data;

    osm.GeoPoint userLocation = await homeController.mapController.myLocation();

    sortNearbyMechanics(mechanics: mechanics, userLocation: userLocation);
  }

  Future<void> sortNearbyMechanics(
      {required List mechanics, required osm.GeoPoint userLocation}) async {
    for (Map item in mechanics) {
      osm.GeoPoint mechanicGeoPoint = osm.GeoPoint(latitude: item["location"].latitude, longitude: item["location"].longitude);

      double distanceBetweenUser =
          await osm.distance2point(mechanicGeoPoint, userLocation);

      item["distance"] = distanceBetweenUser;
    }

    mechanics.sort((a, b) {
      return a["distance"].floor() - b["distance"].floor();
    });
  }
}
