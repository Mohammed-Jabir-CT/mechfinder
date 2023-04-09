import 'package:flutter/material.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard(
      {Key? key, required this.mechanicMail, required this.feedback})
      : super(key: key);

  final String mechanicMail;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(
            color: Colors.white,
          ),
          Text(
            mechanicMail,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            feedback,
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 16,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
