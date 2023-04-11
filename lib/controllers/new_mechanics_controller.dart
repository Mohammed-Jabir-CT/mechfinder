import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class NewMechanicsController extends GetxController {
  final mechanicsSnapshot = Rxn<QuerySnapshot>();

  @override
  void onInit() {
    fetchUnverifiedMechanics();

    super.onInit();
  }

  Future<void> fetchUnverifiedMechanics() async {
    mechanicsSnapshot.value = await FirebaseFirestore.instance
        .collection("mechanics")
        .where("verified", isEqualTo: false)
        .get();
  }
}
