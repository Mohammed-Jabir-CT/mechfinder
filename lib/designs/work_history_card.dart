import 'package:flutter/material.dart';

class WorkHistoryCard extends StatefulWidget {
  const WorkHistoryCard({super.key});

  @override
  State<WorkHistoryCard> createState() => _WorkHistoryCardState();
}

class _WorkHistoryCardState extends State<WorkHistoryCard> {
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
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "date",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "time",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Text("Vengara, 3km away"),
                SizedBox(height: 5,),
                Text("Request accepted"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
