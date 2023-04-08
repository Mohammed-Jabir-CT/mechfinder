import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
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
                "Report",
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
                        hintText: "Explain your complaint..",
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                    ),
                    const SizedBox(height: 14,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: const Icon(Icons.report),
                        label: const Text(
                          "Report",
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
