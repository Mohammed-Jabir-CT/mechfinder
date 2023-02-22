import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(18, 100, 18, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                "Full Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
