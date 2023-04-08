import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/designs/vehicle_button.dart';
import 'package:va/pages/admin_mechanic.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        ],
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
                "Actions:",
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
                      vehicleName: "Mechanics",
                      vehicleIcon: Icons.car_repair,
                      onClick: () {
                        Get.to(()=> AdminMechanic());
                      },
                    ),
                    VehicleButton(
                      vehicleName: "Users",
                      vehicleIcon: Icons.person,
                      onClick: () {
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
