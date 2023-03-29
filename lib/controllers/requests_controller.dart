import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RequestsController extends GetxController {
  final requestSnapshots = Rxn<List<DocumentSnapshot>>();

  @override
  void onInit() {
    fetchRequests();

    super.onInit();
  }

  Future<void> fetchRequests() async {
    User? currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return;
    }

    QuerySnapshot res = await FirebaseFirestore.instance
        .collection("mechanics")
        .doc(currentUser.email)
        .collection("notifications")
        .get();

    requestSnapshots.value = res.docs;
  }
}
