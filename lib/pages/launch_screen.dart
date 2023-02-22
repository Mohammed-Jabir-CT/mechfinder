import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(
          "Mechinder",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }
}
