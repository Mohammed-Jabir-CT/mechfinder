import 'package:flutter/material.dart';

class MechanicsDetails extends StatefulWidget {
  const MechanicsDetails({super.key});

  @override
  State<MechanicsDetails> createState() => _MechanicsDetailsState();
}

class _MechanicsDetailsState extends State<MechanicsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Details Of Kootakkaran",
                    style: TextStyle(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
