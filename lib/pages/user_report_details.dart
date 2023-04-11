import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/user_report_details_controller.dart';

class UserReportDetails extends StatelessWidget {
  UserReportDetails({Key? key}) : super(key: key);

  final UserReportDetailsController controller =
      Get.put(UserReportDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "MechFinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
        child: Center(
          child: Column(
            children: [
              Text(
                "Report Details",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "From: ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          controller.report["userEmail"],
                          style: TextStyle(
                              fontSize: 16, color: Colors.amberAccent),
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
                          controller.report["fullName"],
                          style: TextStyle(
                              fontSize: 16, color: Colors.amberAccent),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        labelText: "COMPLAINT",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      child: Text(
                        controller.report["report"],
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          controller
                              .makePhoneCall(controller.report["phoneNumber"]);
                        },
                        icon: const Icon(Icons.call),
                        label: const Text(
                          "Call Mechanic",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
