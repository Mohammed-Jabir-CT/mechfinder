import 'package:flutter/material.dart';

class UserReportDetails extends StatefulWidget {
  const UserReportDetails({Key? key}) : super(key: key);

  @override
  State<UserReportDetails> createState() => _UserReportDetailsState();
}

class _UserReportDetailsState extends State<UserReportDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "MechFinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
        child: Center(
          child: Column(
            children: [
              Text(
                "Report Details",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          "About: ",
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
                    SizedBox(
                      height: 14,
                    ),
                    InputDecorator(
                      decoration: InputDecoration(
                        labelText: "COMPLAINT",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      child: Text(
                        "report words from user",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 14,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: const Icon(Icons.call),
                        label: const Text(
                          "Call Mechanic",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
