import 'package:flutter_app_01/pages/confirm_registration_page.dart';
import 'package:flutter_app_01/pages/detailmakanan_page.dart';
import 'package:flutter_app_01/pages/listmakanan_page.dart';
import 'package:flutter_app_01/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list const name of pages here

  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";
  static const String list_makanan = "/list_makanan";

  //this array will contain the list of pages
  static final pages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm_registration, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
  ];
}
