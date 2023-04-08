import 'package:flutter/material.dart';
import 'package:va/designs/new_mechanics_card.dart';

class NewMechanics extends StatefulWidget {
  const NewMechanics({Key? key}) : super(key: key);

  @override
  State<NewMechanics> createState() => _NewMechanicsState();
}

class _NewMechanicsState extends State<NewMechanics> {
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
                  "New Requests",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          NewMechanicsCard(),
          NewMechanicsCard(),
        ],
      ),
    );
  }
}
