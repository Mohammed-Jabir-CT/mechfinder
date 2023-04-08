import 'package:flutter/material.dart';
import 'package:va/designs/verified_mechanics_card.dart';

class VerifiedMechanics extends StatefulWidget {
  const VerifiedMechanics({Key? key}) : super(key: key);

  @override
  State<VerifiedMechanics> createState() => _VerifiedMechanicsState();
}

class _VerifiedMechanicsState extends State<VerifiedMechanics> {
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Verified Mechanics",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          VerifiedMechanicsCard(),
          VerifiedMechanicsCard(),
        ],
      ),
    );
  }
}
