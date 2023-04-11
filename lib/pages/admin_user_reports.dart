import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/designs/admin_user_reports_card.dart';

import '../controllers/admin_user_reports_controller.dart';

class AdminUserReports extends StatelessWidget {
  AdminUserReports({Key? key}) : super(key: key);

  final AdminUserReportsController controller =
      Get.put(AdminUserReportsController());

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
          Obx(() {
            return Expanded(
              child: ListView.builder(
                  itemCount: controller.reports.length ?? 0,
                  itemBuilder: (context, index) {
                    return AdminUserReportsCard(
                        report: controller.reports[index]);
                  }),
            );
          })
        ],
      ),
    );
  }
}
