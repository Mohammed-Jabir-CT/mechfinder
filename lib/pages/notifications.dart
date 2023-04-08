import 'package:flutter/material.dart';
import 'package:va/designs/request_status_card.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              RequestStatusCard(),
              RequestStatusCard(),
              RequestStatusCard(),
            ],
          ),
        ),
      ),
    );
  }
}
