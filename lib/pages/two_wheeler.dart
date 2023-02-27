import 'package:flutter/material.dart';
import 'package:va/designs/vehicle_button.dart';
import 'package:va/pages/mechanics.dart';


class TwoWheeler extends StatelessWidget {
  const TwoWheeler({Key? key}) : super(key: key);

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
                "Two Wheeler:",
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
                    VehicleButton(vehicleName: "Bike", vehicleIcon: Icons.two_wheeler, onClick: (){Navigator.pushNamed(context, '/Mechanics');}),
                    VehicleButton(vehicleName: "Scooter", vehicleIcon: Icons.moped, onClick: (){}),
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
