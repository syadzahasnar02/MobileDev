import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";

  static final myPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegistrationPage()),
  ];
}
