import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/admin_login.dart';
import 'package:va/pages/login.dart';
import 'package:va/pages/mechanic_signup.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MechFinder",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: (context){
                return [
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Admin"),
                  ),
                ];
              },
              onSelected:(value){
                if(value == 1){
                  Get.to(()=> AdminLogin());
                }
                }
          ),
        ],
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          child: Column(

            children: [
              Text(
                "\"Stranded?,\n Let us help.\"",
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 40,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 250.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => Login());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                        ),
                        child: const Text(
                          "Register As A User",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6,),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6,),
                    SizedBox(
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => MechanicSignup());
                        },
                        child: const Text(
                          "Register As A Mechanic",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Column(
              //   children: [
              //     TextButton(
              //       onPressed: () {
              //         Get.to(() => AdminLogin());
              //       },
              //       child: Text("Admin"),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
