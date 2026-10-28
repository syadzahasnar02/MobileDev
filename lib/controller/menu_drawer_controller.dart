import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/profile.dart';

class MainMenuController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> listPages = [
    HomePage(), 
    HistoryPage(),
    ProfilePage(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}