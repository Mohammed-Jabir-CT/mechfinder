import 'package:flutter/material.dart';
import 'package:va/colors/colors.dart';

class VehicleButton extends StatelessWidget {
  String vehicleName;
  IconData vehicleIcon;
  VoidCallback onClick;
  VehicleButton({super.key, required this.vehicleName, required this.vehicleIcon, required this.onClick});

  get borderRadius => BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: (){
          onClick();
        },
        child: Container(
          height: 140.0,
          width: 140.0,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: borderRadius,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                vehicleIcon,
                color: Colors.black,
                size: 50.0,
              ),
              Text(
                vehicleName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
