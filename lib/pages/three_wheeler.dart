import 'package:flutter/material.dart';
import 'package:va/designs/vehicle_button.dart';

class ThreeWheeler extends StatelessWidget {
  const ThreeWheeler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Mechinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                "Three Wheeler:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VehicleButton(vehicleName: "Rikshaw", vehicleIcon: Icons.electric_rickshaw, onClick: (){}),
                    VehicleButton(vehicleName: "Goods", vehicleIcon: Icons.electric_rickshaw, onClick: (){}),
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
