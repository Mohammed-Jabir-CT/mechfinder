import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MechanicSignupController extends GetxController {
  Rx<File> profilePhotoFile = File("").obs;
  RxString profilePhotoName = "".obs;
  RxString selectedMechanicType = "".obs;
  Rx<osm.GeoPoint> location = osm.GeoPoint(latitude: 0, longitude: 0).obs;

  TextEditingController profilePhotoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void onInit() {
    super.onInit();

    osm.MapController controller = osm.MapController(
      areaLimit: osm.BoundingBox(
        east: 10.4922941,
        north: 47.8084648,
        south: 45.817995,
        west: 5.9559113,
      ),
    );
  }

  Future<void> pickImage() async {
    try {
      final ImagePicker picker = ImagePicker();

      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image == null) {
        return;
      }

      profilePhotoFile.value = File(image.path);
      profilePhotoName.value = image.name;
    } catch (e) {
      print(e);
      return;
    }
  }

  void onSelectedMechanicTypeChange(Object? value) {
    selectedMechanicType.value = value.toString();
  }

  Future<void> pickLocation() async {
    try {
      osm.GeoPoint? geoPoint = await osm.showSimplePickerLocation(
        context: Get.context!,
        isDismissible: true,
        contentPadding: EdgeInsets.all(10),
        title: "Select your shop location",
        textConfirmPicker: "Select",
        initCurrentUserPosition: true,
        initZoom: 14,
        titleStyle:
            TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold),
      );

      if (geoPoint == null) {
        return;
      }

      location.value = geoPoint;
    } catch (e) {
      return;
    }
  }

  Future<void> signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      final storageRef = FirebaseStorage.instance.ref();

      final imageRef = storageRef
          .child("mechanics/profile_images/${profilePhotoName.value}");

      await imageRef.putFile(profilePhotoFile.value);

      String profilePhotoUrl = await imageRef.getDownloadURL();

      final payload = {
        "profilePhoto": profilePhotoUrl,
        "fullName": nameController.text,
        "phoneNumber": phoneController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "mechanicType": selectedMechanicType.value,
        "place": placeController.text,
        "city": cityController.text,
        "bio": bioController.text,
        "location": GeoPoint(location.value.latitude, location.value.longitude),
        "verified": false
      };

      await FirebaseFirestore.instance
          .collection("mechanics")
          .doc(emailController.text)
          .set(payload);

      Get.showSnackbar(
        const GetSnackBar(
          title: "Success",
          message: 'User registered successfully.',
          duration: Duration(seconds: 2),
        ),
      );
    } on FirebaseAuthException catch (e) {
      Get.showSnackbar(
        GetSnackBar(
          title: "Error",
          message: e.message,
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (e) {
      print(e);
      Get.showSnackbar(
        const GetSnackBar(
          title: "Error",
          message: 'Failed to signup. Please try again.',
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
