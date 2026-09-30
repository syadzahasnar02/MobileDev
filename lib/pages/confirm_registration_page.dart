import 'package:belajarflutter/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration",
      style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          )
          ),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Text(
            "Name: " + controller.nama.toString(),
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 135, 175)),
          ),
          Text(
            "Address: " + controller.address.toString(),
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 135, 175)),
          ),
          Text(
            "Gender: " + controller.gender.toString(),
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 135, 175)),
          ),
          Text(
            "Phone Number: " + controller.phoneNumber.toString(),
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 135, 175)),
          ),
          Text(
            "Email: " + controller.email.toString(),
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 76, 135, 175)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 76, 135, 175),   
            foregroundColor: Colors.white,  
            ),
            onPressed: () {
              Get.back();
            },
            child: Text("OK", 
            style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),
          ), 
          ),
        ],
      ),
      ),
    );
  }
}
