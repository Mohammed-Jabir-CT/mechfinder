import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/controllers/home_controller.dart';
import 'package:va/pages/notifications.dart';
import 'package:va/pages/register.dart';
import 'package:va/pages/vehicle_select.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MechFinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const Notifications());
            },
            icon: const Icon(
              Icons.notifications,
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => const Register());
            },
            child: const Text(
              "JOIN",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
        child: Column(
          children: [
            const Text(
              "You Are Here:",
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.grey),
                ),
                child: OSMFlutter(
                  controller:controller.mapController,
                  trackMyPosition: true,
                  initZoom: 12,
                  minZoomLevel: 8,
                  maxZoomLevel: 14,
                  stepZoom: 1.0,
                  userLocationMarker: UserLocationMaker(
                    personMarker: MarkerIcon(
                      icon: Icon(
                        Icons.location_history_rounded,
                        color: Colors.red,
                        size: 48,
                      ),
                    ),
                    directionArrowMarker: MarkerIcon(
                      icon: Icon(
                        Icons.double_arrow,
                        size: 48,
                      ),
                    ),
                  ),
                  roadConfiguration: RoadOption(
                    roadColor: Colors.yellowAccent,
                  ),
                  markerOption: MarkerOption(
                      defaultMarker: MarkerIcon(
                        icon: Icon(
                          Icons.person_pin_circle,
                          color: Colors.blue,
                          size: 56,
                        ),
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const VehicleSelect());
                    },
                    child: const Text(
                      "Find A Mechanic",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
