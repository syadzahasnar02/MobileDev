import 'dart:convert';

import 'package:belajarflutter/pages/menu_drawer_page.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginCloneFixController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("Error", "Username dan Password harus terisi");
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body:{
          "username" : txtUsername.text.toString(),
          "password" : txtPassword.text.toString(),
        });

        isLoading.value = false;
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          if(data['status'] == true){
            Get.snackbar("Berhasil", data['message']);
            Get.offNamed(Routes.menuDrawerPage);
          }else{
            Get.snackbar("Gagal", data['message']);
          }
        }else{
          Get.snackbar("Gagal", "Check Internet Connection");
        }
        
      } catch (e) {
        Get.snackbar("Gagal", e.toString());
      }
    }
  }
}
