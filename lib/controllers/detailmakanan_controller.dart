import 'package:flutter_app_01/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  MakananModel makanan = Get.arguments['makanan'];
}
