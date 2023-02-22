import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
      body: Padding(
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {  },
      //   backgroundColor: Color(0xFFE6FF94),
      //   child: Icon(
      //     Icons.search,
      //     color: Colors.black,
      //   ),
      // ),
      bottomNavigationBar: Container(
        height: 60.0,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.25,
                ))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/UserProfile');
              },
              enableFeedback: false,
              icon: Icon(
                  Icons.person,
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
