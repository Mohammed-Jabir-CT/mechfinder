import 'package:flutter/material.dart';
import 'package:va/designs/vehicle_button.dart';

class VehicleSelect extends StatelessWidget {
  const VehicleSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          "MechFinder",
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
                "Select Vehicle Type:",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
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
                            Navigator.pushNamed(context, '/TwoWheeler');
                          },
                        ),
                        VehicleButton(
                          vehicleName: "Three Wheeler",
                          vehicleIcon: Icons.electric_rickshaw,
                          onClick: () {
                            Navigator.pushNamed(context, '/ThreeWheeler');
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
                            Navigator.pushNamed(context, '/FourWheeler');
                          },
                        ),
                        VehicleButton(
                          vehicleName: "Heavy",
                          vehicleIcon: Icons.directions_bus_rounded,
                          onClick: () {
                            Navigator.pushNamed(context, '/Heavy');
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
