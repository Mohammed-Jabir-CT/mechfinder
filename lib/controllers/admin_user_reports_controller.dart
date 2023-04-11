import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AdminUserReportsController extends GetxController {
  RxList<Map> reports = [{}].obs;

  @override
  void onInit() {
    fetchReports();

    super.onInit();
  }

  Future<void> fetchReports() async {
    reports.removeLast();

    QuerySnapshot reportsSnapshot =
        await FirebaseFirestore.instance.collection("reports").get();

    for (QueryDocumentSnapshot doc in reportsSnapshot.docs) {
      DocumentSnapshot userSnapshot = await doc.get("userRef").get();
      DocumentSnapshot mechanicSnapshot = await doc.get("mechanicRef").get();

      Map payload = {
        "report": doc.get("report"),
        ...(userSnapshot.data() as Map),
        ...(mechanicSnapshot.data() as Map),
        "mechanicEmail": mechanicSnapshot.get("email"),
        "userEmail": userSnapshot.get("email"),
      };

      reports.add(payload);
    }

    reports.refresh();
  }
}
