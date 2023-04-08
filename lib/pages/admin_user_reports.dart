import 'package:flutter/material.dart';
import 'package:va/designs/admin_user_reports_card.dart';

class AdminUserReports extends StatefulWidget {
  const AdminUserReports({Key? key}) : super(key: key);

  @override
  State<AdminUserReports> createState() => _AdminUserReportsState();
}

class _AdminUserReportsState extends State<AdminUserReports> {
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
                  "User Reports",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          AdminUserReportsCard(),
          AdminUserReportsCard(),
        ],
      ),
    );
  }
}
