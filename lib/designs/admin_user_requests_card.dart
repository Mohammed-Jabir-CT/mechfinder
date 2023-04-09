import 'package:flutter/material.dart';

class AdminUserRequestsCard extends StatefulWidget {
  const AdminUserRequestsCard({Key? key}) : super(key: key);

  @override
  State<AdminUserRequestsCard> createState() => _AdminUserRequestsCardState();
}

class _AdminUserRequestsCardState extends State<AdminUserRequestsCard> {
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
                "Request",
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
                    "From: ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "User email",
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
                    "To: ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Mech Name",
                    style: TextStyle(fontSize: 16, color: Colors.amberAccent),
                  ),
                ],
              ),
            ],
          ),
          Text(
              "TIme"
          ),
        ],
      ),
    );;  }
}
