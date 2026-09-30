import 'package:flutter/material.dart';
import 'package:flutter_app_01/controllers/confirm_registration_controller.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama ${controller.name}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Gender ${controller.gender}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Oke"),
          ),
        ],
      ),
    );
  }
}