import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Mechinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.grey[850],
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/Notifications");
            },
            icon: Icon(
              Icons.notifications,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Register");
              },
              child: Text(
                "JOIN",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
          ),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 100.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/VehicleSelect');
                },
                child: Text(
                  "Find",
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
