import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/profile.dart';
import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/list_detail_product_page.dart';
import 'package:belajarflutter/pages/main_menu_page.dart';
import 'package:belajarflutter/pages/menu_drawer_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:belajarflutter/pages/list_product_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String listDetailProduk = "/listDetailProduk";
  static const String mainMenuPage = "/mainMenuPage";
  static const String homePage = "/homePage";
  static const String historyPage = "/historyPage";
  static const String profilePage = "/profilePage";
  static const String menuDrawerPage = "/menuDrawerPage";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProductPage()),
    GetPage(name: listDetailProduk, page: () => ListDetailProductPage()),
    GetPage(name: homePage, page: () => HomePage()),
    GetPage(name: historyPage, page: () => HistoryPage()),
    GetPage(name: profilePage, page: () => ProfilePage()),
    GetPage(name: menuDrawerPage, page: () => MenuDrawerPage()),
  ];
}
