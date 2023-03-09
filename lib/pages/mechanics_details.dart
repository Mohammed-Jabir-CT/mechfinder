import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:va/controllers/mechanic_details_controller.dart";

class MechanicsDetails extends StatefulWidget {
  const MechanicsDetails({super.key});

  @override
  State<MechanicsDetails> createState() => _MechanicsDetailsState();
}

class _MechanicsDetailsState extends State<MechanicsDetails> {
  final controller = Get.put(MechanicDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "Details Of Kootakkaran",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Kootakkaran",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text("9456748207"),
              const SizedBox(
                height: 12,
              ),
              const Text("Vengara"),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "4.7",
                    style: TextStyle(color: Colors.amberAccent),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                  ),
                ],
              ),
              const SizedBox(
                height: 230,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
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
                          controller.getUserLocation(context);
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
