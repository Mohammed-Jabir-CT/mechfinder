import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 50,),
              CircleAvatar(
                radius: 35.0,
                child: Icon(
                  Icons.person,
                  color: Colors.grey[200],
                ),
                backgroundColor: Colors.grey[400],
              ),
              SizedBox(height: 30.0,),
              Text(
                "Koottakkaran",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "Vengara, Malappuram",

              ),
            ],
          ),
        ),
      ),
    );
  }
}
