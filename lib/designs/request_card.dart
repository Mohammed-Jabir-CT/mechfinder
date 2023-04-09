import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/controllers/request_card_controller.dart';

class RequestCard extends StatelessWidget {
  RequestCard({super.key, required this.id});

  final String id;

  final controller = Get.put(RequestCardController());

  @override
  Widget build(BuildContext context) {
    controller.fetchRequest(id: id);

    return Container(
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
      padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Request",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontFamily: "Poppins",
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                Text("Vengara, 3km away"),
              ],
            ),
          ),
          Obx(() {
            return SizedBox(
              child: controller.notificationSnapshot.value?.get("status") == 1
                  ? TextButton(
                      onPressed: () {
                        controller.goToRoutePage();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.done),
                          Text("Accepted"),
                        ],
                      ),
                    )
                  : controller.notificationSnapshot.value?.get("status") == 0
                      ? TextButton(
                          onPressed: () {
                            return;
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.not_interested),
                              Text("Declined"),
                            ],
                          ),
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  controller.acceptRequest(id: id);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.done),
                                    Text("Accept"),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  controller.declineRequest(id: id);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.not_interested),
                                    Text("Decline"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
            );
          }),
        ],
      ),
    );
  }
}
