import 'package:belajarflutter/controller/main_menu_controller.dart';
import 'package:belajarflutter/menu/history.dart';
import 'package:belajarflutter/menu/home.dart';
import 'package:belajarflutter/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: menuController.selectedIndex.value, 
        children: menuController.listPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: menuController.selectedIndex.value,
      onTap: menuController.changePage,
      items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history_rounded),
        label: "History",
      ),  
      BottomNavigationBarItem(
        icon: Icon(Icons.person_rounded),
        label: "Profile",
      ),
      ]),
    ));
  }
}
