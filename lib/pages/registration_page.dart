import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_01/components/custom_button.dart';
import 'package:flutter_app_01/components/custom_gender_radiogroup.dart';
import 'package:flutter_app_01/components/custom_textfield.dart';
import 'package:flutter_app_01/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_app_01/controllers/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  final TextEditingController txtUsername = TextEditingController();
  final RegistrationController controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRATION', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1f1e22),
      ),
      backgroundColor: const Color(0xFF1f1e22),
      body: Column(
        children: [
          CustomTextField(
            txtController: txtUsername,
            style: CustomTextFieldStyle(),
            border: CustomTextFieldBorder(),
            hintText: 'Username',
          ),
          Obx(
            () => CustomRadioGroup<Gender>(
              groupValue: controller.selectedGender.value,
              onChanged: controller.setGender,
              options: const {
                Gender.lakiLaki: 'Laki-laki',
                Gender.perempuan: 'Perempuan',
              },
            ),
          ),
          CustomButton(
            text: 'Register',
            style: CustomButtonStyle(),
            onPressed: () {
              Get.toNamed(
                Routes.confirm_registration,
                arguments: {
                  'name': txtUsername.text.toString(),
                  'gender': controller.selectedGender.value == Gender.lakiLaki
                      ? 'Laki-laki'
                      : 'Perempuan',
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
