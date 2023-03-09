import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.grey[400],
                child: Icon(
                  Icons.person,
                  color: Colors.grey[200],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Koottakkaran",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Vengara, Malappuram",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
