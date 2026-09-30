import 'package:get/get.dart';
import 'package:flutter/material.dart';

enum Gender {
  lakiLaki,
  perempuan,
}

class RegistrationController extends GetxController {
  final selectedGender = ValueNotifier<Gender?>(null);

  void setGender(Gender? value) {
    selectedGender.value = value;
  }
}