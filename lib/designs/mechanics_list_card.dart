import 'package:flutter/material.dart';

class MechanicsListCard extends StatefulWidget {
  const MechanicsListCard({Key? key}) : super(key: key);

  @override
  State<MechanicsListCard> createState() => _MechanicsListCardState();
}

class _MechanicsListCardState extends State<MechanicsListCard> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          border: Border(
            right: BorderSide.none,
            left: BorderSide.none,
            bottom: BorderSide.none,
            top: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person),
              radius: 25,
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Kootakkaran",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text("Vengara, 3km away"),
              ],
            ),
            SizedBox(width: 140,),
            Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "4.7",
                        style: TextStyle(
                            color: Colors.amberAccent
                        ),
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
    );
  }
}
