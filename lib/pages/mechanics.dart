import 'package:flutter/material.dart';

class Mechanics extends StatefulWidget {
  const Mechanics({Key? key}) : super(key: key);

  @override
  State<Mechanics> createState() => _MechanicsState();
}

class _MechanicsState extends State<Mechanics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.filter_alt),
              label: Text("Filter")
          ),
        ],
      ),
    );
  }
}
