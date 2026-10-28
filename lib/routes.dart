import 'package:flutter_app_01/pages/confirm_registration_page.dart';
import 'package:flutter_app_01/pages/detailmakanan_page.dart';
import 'package:flutter_app_01/pages/drawer_menu_page.dart';
import 'package:flutter_app_01/pages/listmakanan_page.dart';
import 'package:flutter_app_01/pages/main_menu_page.dart';
import 'package:flutter_app_01/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list const name of pages here

  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String drawer_menu = "/drawer_menu";

  //this array will contain the list of pages
  static final pages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: drawer_menu, page: () => DrawerMenuPage()),
  ];
}
