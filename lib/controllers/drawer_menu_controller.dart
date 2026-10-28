import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app_01/menu/history_page.dart';
import 'package:flutter_app_01/menu/home_page.dart';
import 'package:flutter_app_01/menu/profile_page.dart';

class DrawerMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back(); // Tutup drawer otomatis pas menu diklik
  }
}
