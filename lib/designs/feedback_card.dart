import 'package:flutter/material.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({Key? key}) : super(key: key);

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(color: Colors.white,),
          Text(
            "aaa@gmail.com",
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          Text(
            "good work, nice punctuality",
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 16,
            ),
          ),
          Divider(color: Colors.white,),
        ],
      ),
    );
  }
}