import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/report_controller.dart';

class Report extends StatelessWidget {
  Report({Key? key}) : super(key: key);

  final ReportController controller = Get.put(ReportController());

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
                "Report",
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
                      controller: controller.reportController,
                      decoration: const InputDecoration(
                        hintText: "Explain your complaint..",
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          controller.sendReport();
                        },
                        icon: const Icon(Icons.report),
                        label: const Text(
                          "Report",
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
