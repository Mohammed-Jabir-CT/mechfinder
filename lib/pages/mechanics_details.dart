import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:va/controllers/mechanics_details_controller.dart';

class MechanicsDetails extends StatefulWidget {
  final controller = Get.put(MechanicsDetailsController());

  late String name;
  late String place;
  late String photo;
  late String phoneNumber;
  late String city;
  late String bio;
  late String mechanicype;
  late String email;

  MechanicsDetails(
      {super.key,
      required this.photo,
      required this.name,
      required this.place,
      required this.city,
      required this.phoneNumber,
      required this.bio,
      required this.mechanicype,
      required this.email});

  @override
  State<MechanicsDetails> createState() => _MechanicsDetailsState();
}

class _MechanicsDetailsState extends State<MechanicsDetails> {
  Future<void>? _launched;

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                                fontSize: 18,
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
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "${widget.place}, ${widget.city}",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "3km away",
                                  style: TextStyle(
                                    color: Colors.amberAccent,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InputDecorator(
                            decoration: InputDecoration(
                              labelText: "Bio",
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              widget.bio,
                              style: TextStyle(
                                fontSize: 16,
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
                            _launched = _makePhoneCall(widget.phoneNumber);
                          });
                        },
                        child: const Text(
                          "Call",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "Poppins"),
                        ),
                      ),
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
                        child: const Text(
                          "Send Location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "Poppins"),
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
