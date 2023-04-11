import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/controllers/new_mechanics_controller.dart';
import 'package:va/designs/new_mechanics_card.dart';

class NewMechanics extends StatelessWidget {
  NewMechanics({Key? key}) : super(key: key);

  final NewMechanicsController controller = Get.put(NewMechanicsController());

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
                  "New Requests",
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
                  itemCount:
                      controller.mechanicsSnapshot.value?.docs.length ?? 0,
                  itemBuilder: (context, index) {
                    return NewMechanicsCard(
                        mechanic:
                            controller.mechanicsSnapshot.value!.docs[index]);
                  }),
            );
          })
        ],
      ),
    );
  }
}
