import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/mechanics_controller.dart';
import '../designs/mechanics_list_card.dart';

class Mechanics extends StatefulWidget {
  const Mechanics({Key? key, required this.mechanicType}) : super(key: key);

  final String mechanicType;

  @override
  State<Mechanics> createState() => _MechanicsState();
}

class _MechanicsState extends State<Mechanics> {

  final controller = Get.put(MechanicsController());
  late String name;
  late String place;
  late String photo;
  late String phoneNumber;
  late String city;
  late String bio;
  late String mechanicype;
  late String email;

  @override
  void initState() {
    super.initState();
    controller.fetchMechanics(mechanicType: widget.mechanicType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Find Mechanics Nearby",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                      itemCount: controller.mechanics.length,
                      itemBuilder: (context, index) {
                        name = controller.mechanics[index]["fullName"];
                        place = controller.mechanics[index]["place"];
                        photo = controller.mechanics[index]["profilePhoto"];
                        city = controller.mechanics[index]["city"];
                        phoneNumber = controller.mechanics[index]["phoneNumber"];
                        bio = controller.mechanics[index]["bio"];
                        mechanicype = controller.mechanics[index]["mechanicType"];
                        email = controller.mechanics[index]["email"];
                        return MechanicsListCard(
                            photo: photo,
                            name: name,
                            place: place,
                            city: city,
                            phoneNumber: phoneNumber,
                            bio: bio,
                            mechanicype: mechanicype,
                            email: email,
                        );
                      });
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
