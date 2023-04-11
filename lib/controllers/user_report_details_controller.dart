import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class UserReportDetailsController extends GetxController {
  final report = Get.arguments["report"];

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
