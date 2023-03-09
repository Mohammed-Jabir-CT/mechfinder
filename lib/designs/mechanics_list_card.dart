import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/mechanics_details.dart';

class MechanicsListCard extends StatefulWidget {
  const MechanicsListCard({Key? key}) : super(key: key);

  @override
  State<MechanicsListCard> createState() => _MechanicsListCardState();
}

class _MechanicsListCardState extends State<MechanicsListCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const MechanicsDetails());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          border: const Border(
            right: BorderSide.none,
            left: BorderSide.none,
            bottom: BorderSide.none,
            top: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25,
              child: Icon(Icons.person),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Kootakkaran",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 16,
                  ),
                ),
                Text("Vengara, 3km away"),
              ],
            ),
            const SizedBox(
              width: 140,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "4.7",
                      style: TextStyle(color: Colors.amberAccent),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 16,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
