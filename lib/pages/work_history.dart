import 'package:flutter/material.dart';
import 'package:va/designs/work_history_card.dart';

class WorkHistory extends StatefulWidget {
  const WorkHistory({Key? key}) : super(key: key);

  @override
  State<WorkHistory> createState() => _WorkHistoryState();
}

class _WorkHistoryState extends State<WorkHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  "Work History",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              WorkHistoryCard(),
              WorkHistoryCard(),
              WorkHistoryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
