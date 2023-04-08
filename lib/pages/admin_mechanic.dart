import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/designs/vehicle_button.dart';
import 'package:va/pages/new_mechanics.dart';
import 'package:va/pages/verified_mechanics.dart';

class AdminMechanic extends StatefulWidget {
  const AdminMechanic({Key? key}) : super(key: key);

  @override
  State<AdminMechanic> createState() => _AdminMechanicState();
}

class _AdminMechanicState extends State<AdminMechanic> {
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
                "Mechanics:",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VehicleButton(
                      vehicleName: "Verified",
                      vehicleIcon: Icons.verified,
                      onClick: () {
                        Get.to(()=>VerifiedMechanics());
                      },
                    ),
                    VehicleButton(
                      vehicleName: "New",
                      vehicleIcon: Icons.add,
                      onClick: () {
                        Get.to(()=>NewMechanics());
                      },
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
