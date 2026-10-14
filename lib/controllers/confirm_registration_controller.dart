import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String name;
  late String gender;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    name = arguments['name'];
    gender = arguments['gender'];
  }
}
