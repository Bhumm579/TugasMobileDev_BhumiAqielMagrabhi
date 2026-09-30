import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_01/components/custom_button.dart';
import 'package:flutter_app_01/components/custom_textfield.dart';
import 'package:flutter_app_01/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_app_01/controllers/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  final TextEditingController txtUsername = TextEditingController();
  final RegistrationController controller = RegistrationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRATION'),
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
          ValueListenableBuilder(
            valueListenable: controller.selectedGender,
            builder: (context, gender, child) {
              return RadioGroup<Gender>(
                groupValue: gender,
                onChanged: (controller.setGender),
                child: const Column(
                  children: [
                    ListTile(
                      title: const Text('Laki-laki'),
                      leading: const Radio<Gender>(value: Gender.lakiLaki),
                    ),
                    ListTile(
                      title: const Text('Perempuan'),
                      leading: const Radio<Gender>(value: Gender.perempuan),
                    ),
                  ],
                ),
              );
            },
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
