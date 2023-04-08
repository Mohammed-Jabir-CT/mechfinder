import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:va/pages/register.dart';

class MechanicHomeController extends GetxController {
  final mechanicSnapshot = Rxn<DocumentSnapshot>();

  @override
  void onInit() {
    fetchMechanic();

    super.onInit();
  }

  Future<void> fetchMechanic() async {
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return;
    }

    mechanicSnapshot.value = await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(currentUser.email)
        .get();
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => Register());
  }
}
