import 'package:flutter/material.dart';

class RequestCard extends StatefulWidget {
  const RequestCard({super.key});

  @override
  State<RequestCard> createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard> {
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
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text("Vengara, 3km away"),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                          Icons.done
                      ),
                      Text("Accept"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                          Icons.not_interested
                      ),
                      Text("Decline"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
