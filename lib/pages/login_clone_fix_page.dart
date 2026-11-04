import 'package:belajarflutter/component/my_button2.dart';
import 'package:belajarflutter/controller/login_clone_fix_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/my_inputfield.dart';
import '../component/my_button.dart';

class LoginCloneFix extends StatelessWidget {
  LoginCloneFix({super.key});

  final controller = Get.put(LoginCloneFixController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Top Bar Navigation
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFFAFAFAF),
                        size: 28,
                      ),
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter your details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFAFAFAF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Combined Input Box
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE5E5E5), width: 2),
                ),
                child: Column(
                  children: [
                    MyInputField(
                      myHint: "Email or username",
                      txtController: controller.txtUsername,
                    ),

                    const Divider(
                      height: 1,
                      thickness: 2,
                      color: Color(0xFFE5E5E5),
                    ),

                    MyInputField(
                      myHint: "Password",
                      txtController: controller.txtPassword,
                      isPassword: true,
                      suffixIcon: const Icon(
                        Icons.visibility_outlined,
                        color: Color(0xFF1CB0F6),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Obx(
                () => controller.isLoading.value ? Center(child: CircularProgressIndicator(),) : MyButton2(
                  text: "LOGIN", 
                  onPressed: controller.login
                  ),
                ),

              const SizedBox(height: 20),

              const Text(
                "FORGOT PASSWORD",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1CB0F6),
                ),
              ),

              const SizedBox(height: 60),

              MyButton(
                text: "SIGN IN WITH GOOGLE",
                icon: const Text(
                  "G ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                onPressed: () {},
              ),

              const SizedBox(height: 14),

              MyButton(
                text: "SIGN IN WITH FACEBOOK",
                icon: const Icon(
                  Icons.facebook,
                  color: Color(0xFF1877F2),
                  size: 26,
                ),
                onPressed: () {},
              ),

              const SizedBox(height: 14),

              MyButton(
                text: "SIGN IN WITH APPLE",
                icon: const Icon(Icons.apple, color: Colors.black, size: 26),
                onPressed: () {},
              ),

              const SizedBox(height: 40),

              // Footer Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "By signing in to Duolingo, you agree to our Terms and Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
