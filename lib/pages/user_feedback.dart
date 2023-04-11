import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/report.dart';

import '../controllers/user_feedback_controller.dart';

class UserFeedback extends StatelessWidget {
  UserFeedback({Key? key}) : super(key: key);

  final controller = Get.put(UserFeedbackController());

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
                "Feedback",
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
                    TextFormField(
                      controller: controller.feedbackController,
                      decoration: const InputDecoration(
                        hintText: "How you feel about this work?",
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                    ),
                    SizedBox(height: 14,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          controller.sendFeedback();
                        },
                        icon: Icon(Icons.feedback),
                        label: const Text(
                          "Send Feedback",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("or"),
                  TextButton.icon(
                    onPressed: () {
                      Get.to(() => Report(), arguments: {
                        "mechanicRef": controller.arguments["mechanicRef"]
                      });
                    },
                    icon: Icon(Icons.report, color: Colors.amberAccent,),
                    label: Text("Report"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
