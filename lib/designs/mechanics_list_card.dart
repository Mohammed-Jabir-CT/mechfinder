import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/mechanics_details.dart';

class MechanicsListCard extends StatefulWidget {
  late String name;
  late String place;
  late String photo;
  late String phoneNumber;
  late String email;
  late String city;
  late String bio;
  late String mechanicype;
  MechanicsListCard({super.key, required this.photo, required this.name, required this.place, required this.city, required this.phoneNumber, required this.bio, required this.mechanicype, required this.email});

  @override
  State<MechanicsListCard> createState() => _MechanicsListCardState();
}

class _MechanicsListCardState extends State<MechanicsListCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(()=> MechanicsDetails(photo: widget.photo, name: widget.name, place: widget.place, city: widget.city, phoneNumber: widget.phoneNumber, bio: widget.bio, mechanicype: widget.mechanicype, email: widget.email,));
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
                backgroundImage: NetworkImage(widget.photo),
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
                        widget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 16,
                        ),
                      ),
                      Text("${widget.place}, ${widget.city}"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: const [
                  Text(
                    "3km",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
