import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/designs/request_card.dart';

import '../controllers/requests_controller.dart';

class Requests extends StatelessWidget {
  Requests({Key? key}) : super(key: key);

  final controller = Get.put(RequestsController());

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
                  "Requests",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                      itemCount: controller.requestSnapshots.value?.length,
                      itemBuilder: (context, index) {
                        return RequestCard(
                            id: controller.requestSnapshots.value?[index].id ??
                                "");
                      });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
