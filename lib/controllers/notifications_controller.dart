import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class NotificationsController extends GetxController {
  RxList notifications = [].obs;

  @override
  void onInit() {
    fetchNotifications();
    super.onInit();
  }

  Future<void> fetchNotifications() async {
    try {
      QuerySnapshot notificationsSnapshot = await FirebaseFirestore.instance
          .collection("user")
          .doc(FirebaseAuth.instance.currentUser!.email)
          .collection("notifications")
          .get();

      List<Map> notificationsArray = [];
      for (DocumentSnapshot doc in notificationsSnapshot.docs) {
        DocumentReference mechanicRef = doc.get("mechanic_ref");
        DocumentSnapshot mechanic = await mechanicRef.get();

        notificationsArray.add(
            {"name": mechanic.get("fullName"), "status": doc.get("status")});
      }

      notifications.value = notificationsArray;
      notifications.refresh();
    } catch (e) {
      notifications.value = [];
      notifications.refresh();
    }
  }
}
