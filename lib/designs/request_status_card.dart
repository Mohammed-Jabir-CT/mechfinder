import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/user_feedback.dart';

class RequestStatusCard extends StatelessWidget {
  const RequestStatusCard(
      {Key? key,
      required this.status,
      required this.mechanicName,
      required this.mechanicRef})
      : super(key: key);

  final dynamic status;
  final String mechanicName;
  final DocumentReference mechanicRef;

  @override
  Widget build(BuildContext context) {
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
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Request Status",
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
                    "Mechanic: ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    mechanicName,
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
                    "Status: ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    status == 0
                        ? "Declined"
                        : status == 1
                            ? "Accepted"
                            : "Waiting",
                    style: TextStyle(fontSize: 16, color: Colors.amberAccent),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.done,
            color: Colors.amberAccent,
          ),
          TextButton(
            onPressed: () {
              Get.to(() => UserFeedback(),
                  arguments: {"mechanicRef": mechanicRef});
            },
            child: Text("Give Feedback"),
          ),
        ],
      ),
    );
  }
}
