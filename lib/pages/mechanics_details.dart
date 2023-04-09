import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:va/controllers/mechanics_details_controller.dart';
import 'package:va/designs/feedback_card.dart';

class MechanicsDetails extends StatefulWidget {
  final controller = Get.put(MechanicsDetailsController());

  late String name;
  late String place;
  late String photo;
  late String phoneNumber;
  late String city;
  late String bio;
  late String mechanicType;
  late String email;

  MechanicsDetails(
      {super.key,
      required this.photo,
      required this.name,
      required this.place,
      required this.city,
      required this.phoneNumber,
      required this.bio,
      required this.mechanicType,
      required this.email});

  @override
  State<MechanicsDetails> createState() => _MechanicsDetailsState();
}

class _MechanicsDetailsState extends State<MechanicsDetails> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    widget.controller.fetchFeedbacks(email: widget.email);

    return Scaffold(
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
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
        child: Column(
          children: [
            Column(
              children: const [
                Text(
                  "Mechanic Profile",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(widget.photo),
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            widget.phoneNumber,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "${widget.place}, ${widget.city}",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Obx(() {
                                      return Dialog(
                                        elevation: 16,
                                        backgroundColor: Colors.grey[900],
                                        child: Column(children: [
                                          SizedBox(height: 20),
                                          Center(
                                              child: Text(
                                            "Feedbacks",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          SizedBox(height: 20),
                                          Expanded(
                                            child: ListView.builder(
                                                itemCount: widget
                                                        .controller
                                                        .feedbacksSnapshot
                                                        .value
                                                        ?.docs
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  return FeedbackCard(
                                                    mechanicMail: widget
                                                        .controller
                                                        .feedbacksSnapshot
                                                        .value!
                                                        .docs[index]
                                                        .id,
                                                    feedback: widget
                                                        .controller
                                                        .feedbacksSnapshot
                                                        .value!
                                                        .docs[index]
                                                        .get("feedback"),
                                                  );
                                                }),
                                          ),
                                        ]),
                                      );
                                    });
                                  },
                                );
                              },
                              child: Text("Feedbacks")),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InputDecorator(
                          decoration: InputDecoration(
                            labelText: "BIO",
                            labelStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          child: Text(
                            widget.bio,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _makePhoneCall(widget.phoneNumber);
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.call),
                            Text(
                              "Call",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        widget.controller.sendLocation(email: widget.email);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_rounded),
                          Text(
                            "Send Location",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
