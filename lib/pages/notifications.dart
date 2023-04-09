import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/designs/request_status_card.dart';

import '../controllers/notifications_controller.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  final controller = Get.put(NotificationsController());

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
              Obx(() {
                return Expanded(
                  child: ListView.builder(
                      itemCount: controller.notifications.length,
                      itemBuilder: (context, index) {
                        return RequestStatusCard(
                          mechanicName: controller.notifications[index]["name"],
                          status: controller.notifications[index]["status"],
                          mechanicRef: controller.notifications[index]
                              ["mechanicRef"],
                        );
                      }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
