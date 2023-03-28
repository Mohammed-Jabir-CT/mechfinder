import 'package:flutter/material.dart';
import 'package:va/designs/vehicle_button.dart';
import 'package:get/get.dart';

import 'mechanics.dart';

class VehicleSelect extends StatelessWidget {
  const VehicleSelect({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Select Vehicle Type:",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        VehicleButton(
                          vehicleName: "Two Wheeler",
                          vehicleIcon: Icons.two_wheeler,
                          onClick: () {
                            Get.to(() => Mechanics(mechanicType: "Two Wheeler",));
                          },
                        ),
                        VehicleButton(
                          vehicleName: "Three Wheeler",
                          vehicleIcon: Icons.electric_rickshaw,
                          onClick: () {
                            Get.to(() => const Mechanics(mechanicType: "Three Wheeler",));
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        VehicleButton(
                          vehicleName: "Four Wheeler",
                          vehicleIcon: Icons.local_taxi,
                          onClick: () {
                            Get.to(() => const Mechanics(mechanicType: "Four Wheeler",));
                          },
                        ),
                        VehicleButton(
                          vehicleName: "Heavy",
                          vehicleIcon: Icons.directions_bus_rounded,
                          onClick: () {
                            Get.to(() => const Mechanics(mechanicType: "Heavy",));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
