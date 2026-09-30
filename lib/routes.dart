import 'package:flutter_app_01/pages/confirm_registration_page.dart';
import 'package:flutter_app_01/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list const name of pages here

  static const String registration = "/registration";
  static const String confirm_registration = "/confirm_registration";

  //this array will contain the list of pages
  static final pages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=> ConfirmRegistrationPage()),
  ];
}