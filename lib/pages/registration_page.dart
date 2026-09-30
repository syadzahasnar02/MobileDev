import 'package:belajarflutter/component/my_textfield.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAddress = TextEditingController();
    TextEditingController txtGender = TextEditingController();
    TextEditingController txtNo = TextEditingController();
    TextEditingController txtEmail = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Registration",
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 76, 135, 175)
          ),
        ),
        centerTitle: true,
        ),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        spacing: 12,
        children: [
          MyTextField(myHint: "Input name", txtController: txtNama, radius: 20),
          MyTextField(myHint: "Input address", txtController: txtAddress, radius: 20),
          MyTextField(myHint: "Input gender", txtController: txtGender, radius: 20),
          MyTextField(myHint: "Input phone number", txtController: txtNo, radius: 20),
          MyTextField(myHint: "Input email", txtController: txtEmail, radius: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 76, 135, 175),   
            foregroundColor: Colors.white,  
            ),
            onPressed: () {
              Get.toNamed(
                Routes.confirmRegistration,
                arguments: {
                  'name': txtNama.text,
                  'address': txtAddress.text,
                  'gender': txtGender.text,
                  'phone_number': txtNo.text,
                  'email': txtEmail.text,
                  },
              );
            },
            child: Text(
              "Send", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
          ),
          ),
        ],
      ),
    ),
    );
  }
}
