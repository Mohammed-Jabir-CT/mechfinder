import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/report.dart';

class UserFeedback extends StatefulWidget {
  const UserFeedback({Key? key}) : super(key: key);

  @override
  State<UserFeedback> createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {
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
                "Feedback",
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
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "How you feel about this work?",
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                    ),
                    SizedBox(height: 14,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.feedback),
                        label: const Text(
                          "Send Feedback",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("or"),
                  TextButton.icon(
                    onPressed: (){
                      Get.to(()=> Report());
                    },
                    icon: Icon(Icons.report, color: Colors.amberAccent,),
                    label: Text("Report"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
