import 'package:flutter/material.dart';
import 'package:va/designs/vehicle_button.dart';

class FourWheeler extends StatelessWidget {
  const FourWheeler({Key? key}) : super(key: key);

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
                "Four Wheeler:",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        VehicleButton(vehicleName: "Car", vehicleIcon: Icons.local_taxi, onClick: (){}),
                        VehicleButton(vehicleName: "Pickup", vehicleIcon: Icons.local_taxi, onClick: (){}),
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
