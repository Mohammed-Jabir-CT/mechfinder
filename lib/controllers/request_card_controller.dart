import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../pages/route.dart';

class RequestCardController extends GetxController {
  final notificationSnapshot = Rxn<DocumentSnapshot>();

  Future<void> fetchRequest({required String id}) async {
    if (id == "") {
      return;
    }

    notificationSnapshot.value = await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection("notifications")
        .doc(id)
        .get();
  }

  Future<void> acceptRequest({required String id}) async {
    await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection("notifications")
        .doc(id)
        .update({"status": 1});

    DocumentReference userRef = notificationSnapshot.value?.get("user_ref");

    await userRef
        .collection("notifications")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .update({"status": 1});

    fetchRequest(id: id);

    goToRoutePage();
  }

  Future<void> declineRequest({required String id}) async {
    await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection("notifications")
        .doc(id)
        .update({"status": 0});

    DocumentReference userRef = notificationSnapshot.value?.get("user_ref");

    await userRef
        .collection("notifications")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .update({"status": 0});

    await fetchRequest(id: id);

    Get.showSnackbar(
      const GetSnackBar(
        message: 'Request Declined.',
        duration: Duration(seconds: 2),
      ),
    );
  }

  void goToRoutePage() {
    Get.to(() => Route(), arguments: {
      "userLocation": notificationSnapshot.value?.get("location")
    });
  }
}
