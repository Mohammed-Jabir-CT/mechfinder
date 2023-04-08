import 'package:flutter/material.dart';
import 'package:va/designs/admin_user_requests_card.dart';

class AdminUserRequests extends StatefulWidget {
  const AdminUserRequests({Key? key}) : super(key: key);

  @override
  State<AdminUserRequests> createState() => _AdminUserRequestsState();
}

class _AdminUserRequestsState extends State<AdminUserRequests> {
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
                  "User Requests",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          AdminUserRequestsCard(),
          AdminUserRequestsCard(),
          AdminUserRequestsCard(),
        ],
      ),
    );
  }
}
