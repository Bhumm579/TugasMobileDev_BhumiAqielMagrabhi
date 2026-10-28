import 'package:flutter/material.dart';
import 'package:flutter_app_01/menu/history_page.dart';
import 'package:flutter_app_01/menu/home_page.dart';
import 'package:flutter_app_01/menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}
