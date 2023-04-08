import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../pages/route.dart';

class RequestCardController extends GetxController {
  Future<void> acceptRequest({required String id}) async {
    DocumentSnapshot notificationsSnapshot = await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection("notifications")
        .doc(id)
        .get();

    await FirebaseFirestore.instance
        .collection("user")
        .doc(id)
        .collection("notifications")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .update({"status": 1});

    DocumentReference userRef = notificationsSnapshot.get("user_ref");

    await userRef.collection("notifications").doc(id).update({"status": 1});

    Get.to(() => Route());
  }
}
