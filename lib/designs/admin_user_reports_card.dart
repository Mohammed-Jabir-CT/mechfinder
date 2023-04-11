import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/user_report_details.dart';

class AdminUserReportsCard extends StatelessWidget {
  const AdminUserReportsCard({Key? key, required this.report})
      : super(key: key);

  final Map report;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => UserReportDetails(), arguments: {"report": report});
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          border: const Border(
            right: BorderSide.none,
            left: BorderSide.none,
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Report",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 18,
                      fontFamily: "Poppins",
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "From: ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      report["userEmail"],
                      style: TextStyle(fontSize: 16, color: Colors.amberAccent),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      "About: ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      report["fullName"],
                      style: TextStyle(fontSize: 16, color: Colors.amberAccent),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
