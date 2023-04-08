import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/new_mechanics_details.dart';

class NewMechanicsCard extends StatefulWidget {
  const NewMechanicsCard({Key? key}) : super(key: key);

  @override
  State<NewMechanicsCard> createState() => _NewMechanicsCardState();
}

class _NewMechanicsCardState extends State<NewMechanicsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>NewMechanicsDetails());
      },
      child: Container(
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
        padding: const EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 25,
                // backgroundImage: NetworkImage(widget.photo),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "widget.name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 16,
                        ),
                      ),
                      // Text("${widget.place}, ${widget.city}"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
