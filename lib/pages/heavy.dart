import 'package:flutter/material.dart';
import 'package:va/designs/vehicle_button.dart';

class Heavy extends StatelessWidget {
  const Heavy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          "Mechinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Heavy:",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VehicleButton(vehicleName: "Bus", vehicleIcon: Icons.directions_bus_rounded, onClick: (){}),
                    VehicleButton(vehicleName: "Truck", vehicleIcon: Icons.fire_truck, onClick: (){}),
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
