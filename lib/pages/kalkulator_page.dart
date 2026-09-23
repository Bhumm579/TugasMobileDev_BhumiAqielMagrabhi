import 'package:flutter/material.dart';
import 'package:flutter_app_01/components/custom_button_kalk.dart';
import 'package:flutter_app_01/components/custom_textfield_kalk.dart';
import 'package:flutter_app_01/controllers/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage ({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          KalkulatorTextField(
            label: 'Angka 1', 
            hintText: 'Masukkan Angka 1', 
            controller: txtAngka1,

          ),
          KalkulatorTextField(
            label: 'Angka 2', 
            hintText: 'Masukkan Angka 2', 
            controller: txtAngka2,

          ),
          KalkulatorButton(
            text: 'Tambah', 
            onPressed: () {
              double? angka1 = double.tryParse(txtAngka1.text);
              double? angka2 = double.tryParse(txtAngka2.text);
              controller.tambah(angka1, angka2);
            },
          ),
          const SizedBox(height: 6),
          KalkulatorButton(
            text: 'Kurang', 
            onPressed: () {
              double? angka1 = double.tryParse(txtAngka1.text);
              double? angka2 = double.tryParse(txtAngka2.text);
              controller.kurang(angka1, angka2);
            },
          ),
          const SizedBox(height: 6),
          KalkulatorButton(
            text: 'Kali', 
            onPressed: () {
              double? angka1 = double.tryParse(txtAngka1.text);
              double? angka2 = double.tryParse(txtAngka2.text);
              controller.kali(angka1, angka2);
            },
          ),
          const SizedBox(height: 6),
          KalkulatorButton(
            text: 'Bagi', 
            onPressed: () {
              double? angka1 = double.tryParse(txtAngka1.text);
              double? angka2 = double.tryParse(txtAngka2.text);
              controller.bagi(angka1, angka2);
            },
          ),
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
