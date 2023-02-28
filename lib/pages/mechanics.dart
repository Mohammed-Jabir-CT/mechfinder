import 'package:flutter/material.dart';

import '../designs/mechanics_list_card.dart';

class Mechanics extends StatefulWidget {
  const Mechanics({Key? key}) : super(key: key);

  @override
  State<Mechanics> createState() => _MechanicsState();
}

class _MechanicsState extends State<Mechanics> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Find Mechanics",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const MechanicsListCard(),
              const MechanicsListCard(),
              const MechanicsListCard(),
              const MechanicsListCard(),
              const MechanicsListCard(),
              const MechanicsListCard(),
            ],
          ),
        ),

      ),
    );
  }
}
