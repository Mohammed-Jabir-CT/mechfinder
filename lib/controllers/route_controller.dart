import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;
import 'package:get/get.dart';

class RouteController extends GetxController {
  final arguments = Get.arguments as Map;

  osm.MapController mapController = osm.MapController(
    areaLimit: osm.BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

  @override
  void onInit() {
    showRoute();

    super.onInit();
  }

  Future<void> showRoute() async {
    // For allowing mapController to be fully initialized
    await Future.delayed(const Duration(seconds: 1));

    osm.GeoPoint mechanicLocation = await mapController.myLocation();

    await mapController.drawRoad(
      mechanicLocation,
      osm.GeoPoint(
          latitude: arguments["userLocation"].latitude,
          longitude: arguments["userLocation"].longitude),
      roadType: osm.RoadType.car,
      roadOption: const osm.RoadOption(
        roadWidth: 10,
        roadColor: Colors.blue,
        zoomInto: true,
      ),
    );
  }
}
