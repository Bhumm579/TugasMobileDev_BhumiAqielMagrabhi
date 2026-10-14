import 'package:get/get.dart';

enum Gender { lakiLaki, perempuan }

class RegistrationController extends GetxController {
  var selectedGender = Rxn<Gender>();

  void setGender(Gender? gender) {
    selectedGender.value = gender;
  }
}
