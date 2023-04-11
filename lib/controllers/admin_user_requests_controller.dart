import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AdminUserRequestsController extends GetxController {
  RxList<Map> requests = [{}].obs;

  @override
  void onInit() {
    fetchRequests();

    super.onInit();
  }

  Future<void> fetchRequests() async {
    requests.removeLast();

    QuerySnapshot requestsSnapshot =
        await FirebaseFirestore.instance.collection("requests").get();

    for (QueryDocumentSnapshot doc in requestsSnapshot.docs) {
      DocumentSnapshot userSnapshot = await doc.get("user_ref").get();
      DocumentSnapshot mechanicSnapshot = await doc.get("mechanic_ref").get();

      Map payload = {
        ...(doc.data() as Map),
        ...(userSnapshot.data() as Map),
        ...(mechanicSnapshot.data() as Map),
        "mechanicEmail": mechanicSnapshot.get("email"),
        "userEmail": userSnapshot.get("email"),
      };

      requests.add(payload);
    }

    requests.refresh();
  }
}
