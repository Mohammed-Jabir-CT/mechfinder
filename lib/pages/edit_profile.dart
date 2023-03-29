import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: const [
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                // controller.pickImage();
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                                child: CircleAvatar(
                                  radius: 40,
                                  child: Icon(Icons.person),
                                  // controller.profilePhotoFile.value.path == ""
                                  //     ? const Icon(
                                  //   Icons.person,
                                  //   size: 40,
                                  //   color: Colors.grey,
                                  // )
                                  //     : Image.file(
                                  //     controller.profilePhotoFile.value),
                                ),
                              ),
                            ),
                          Expanded(
                            child: Column(
                              children: [
                                TextFormField(
                                  // controller: controller.nameController,
                                  decoration: const InputDecoration(
                                    hintText: "Full Name",
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  // controller: controller.phoneController,
                                  decoration: const InputDecoration(
                                    hintText: "Phone Number",
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // controller: controller.emailController,
                        decoration: const InputDecoration(
                          hintText: "E-mail",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // controller: controller.passwordController,
                        decoration: const InputDecoration(
                          hintText: "Password",
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // controller: controller.confirmPasswordController,
                        decoration: const InputDecoration(
                          hintText: "Confirm Password",
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade700),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            child: DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButton(
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.25,
                                  ),
                                  // value: controller.selectedMechanicType.value,
                                  // onChanged: controller.onSelectedMechanicTypeChange,
                                  items: const [
                                    DropdownMenuItem<String>(
                                      value: "",
                                      child: Text(
                                        "Select Mechanic Type",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    DropdownMenuItem<String>(
                                        value: "Two Wheeler", child: Text("Two Wheeler")),
                                    DropdownMenuItem<String>(
                                        value: "Three Wheeler",
                                        child: Text("Three Wheeler")),
                                    DropdownMenuItem<String>(
                                        value: "Four Wheeler",
                                        child: Text("Four Wheeler")),
                                    DropdownMenuItem<String>(
                                        value: "Heavy", child: Text("Heavy")),
                                  ], onChanged: (String? value) {  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              // controller: controller.placeController,
                              decoration: const InputDecoration(
                                hintText: "Place",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              // controller: controller.cityController,
                              decoration: const InputDecoration(
                                hintText: "City",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        // controller: controller.bioController,
                        decoration: const InputDecoration(
                          hintText: "Bio.....",
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          // onPressed: controller.pickLocation,
                          onPressed: () {  },
                          child: const Text(
                            "Select Location",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){},
                          // onPressed: controller.signup,
                          child: const Text(
                            "Update",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
