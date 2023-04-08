import 'package:flutter/material.dart';

class RequestStatusCard extends StatefulWidget {
  const RequestStatusCard({Key? key}) : super(key: key);

  @override
  State<RequestStatusCard> createState() => _RequestStatusCardState();
}

class _RequestStatusCardState extends State<RequestStatusCard> {

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
                    fontWeight: FontWeight.bold
                ),
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
                    "Anwar Sabith",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.amberAccent
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Text(
                    "Status: ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Accepted",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.amberAccent
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.done,
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
