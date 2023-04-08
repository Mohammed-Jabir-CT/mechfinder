import 'package:flutter/material.dart';
import 'package:va/colors/colors.dart';

class VehicleButton extends StatefulWidget {
  late String vehicleName;
  late IconData vehicleIcon;
  late VoidCallback onClick;
  VehicleButton(
      {super.key,
      required this.vehicleName,
      required this.vehicleIcon,
      required this.onClick});

  @override
  State<VehicleButton> createState() => _VehicleButtonState();
}

class _VehicleButtonState extends State<VehicleButton> {
  get borderRadius => BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: () {
          widget.onClick();
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
                widget.vehicleIcon,
                color: Colors.black,
                size: 50.0,
              ),
              Text(
                widget.vehicleName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
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
