import 'package:flutter/material.dart';

class VerifiedMechanicsCard extends StatefulWidget {
  const VerifiedMechanicsCard({Key? key}) : super(key: key);

  @override
  State<VerifiedMechanicsCard> createState() => _VerifiedMechanicsCardState();
}

class _VerifiedMechanicsCardState extends State<VerifiedMechanicsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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
    );
  }
}
