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
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Find Mechanics",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                      ),
                      label: Text(
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
              MechanicsListCard(),
              MechanicsListCard(),
              MechanicsListCard(),
              MechanicsListCard(),
              MechanicsListCard(),
              MechanicsListCard(),
            ],
          ),
        ),

      ),
    );
  }
}
