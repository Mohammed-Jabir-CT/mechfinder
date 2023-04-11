import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:va/pages/edit_profile.dart';
import 'package:va/pages/requests.dart';
import 'package:va/pages/work_history.dart';

import '../controllers/mechanic_home_controller.dart';

class MechanicsHome extends StatefulWidget {
  const MechanicsHome({Key? key}) : super(key: key);

  @override
  State<MechanicsHome> createState() => _MechanicsHomeState();
}

class _MechanicsHomeState extends State<MechanicsHome> {
  final controller = Get.put(MechanicHomeController());

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
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: (){
              Get.to(()=> EditProfile());
              },
            icon: Icon(Icons.edit),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  onTap: controller.logout,
                  value: 2,
                  child: Text("Logout"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
        child: Column(
          children: [
            Column(
              children: const [
                Text(
                  "Profile",
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
                child: Obx(() {
                  return Column(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(controller
                                    .mechanicSnapshot.value
                                    ?.get("profilePhoto") ??
                                ""),
                            backgroundColor: Colors.grey,
                          ),
                          const SizedBox(
                            height: 12,
                              ),
                              Text(
                            controller.mechanicSnapshot.value
                                    ?.get("fullName") ??
                                "",
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
                            controller.mechanicSnapshot.value
                                    ?.get("phoneNumber") ??
                                "",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "${controller.mechanicSnapshot.value?.get("place") ?? ""}, ${controller.mechanicSnapshot.value?.get("city") ?? ""}",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                            controller.mechanicSnapshot.value
                                    ?.get("mechanicType") ??
                                "",
                            style: TextStyle(
                              fontSize: 17,
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
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
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
                          controller.mechanicSnapshot.value?.get("bio") ??
                              "",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
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
                        Get.to(() => Requests());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.notifications,
                          ),
                          Text(
                            "Requests",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => WorkHistory());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.history,
                          ),
                          Text(
                            "Work History",
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
