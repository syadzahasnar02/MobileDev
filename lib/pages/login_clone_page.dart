import 'package:flutter/material.dart';

import '../component/my_inputfield.dart';
import '../component/my_socialbutton.dart';

class LoginCloneFix extends StatefulWidget {
  const LoginCloneFix({super.key});

  @override
  State<LoginCloneFix> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginCloneFix> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50),

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
                  txtController: _emailController,
                ),

                const Divider(
                  height: 1,
                  thickness: 2,
                  color: Color(0xFFE5E5E5),
                ),

                MyInputField(
                  myHint: "Password",
                  txtController: _passwordController,
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

          // Sign In Button
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF58CC02),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                "SIGN IN",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
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

          const SizedBox(height: 200),

          // Social Buttons
          MySocialButton(
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

          MySocialButton(
            text: "SIGN IN WITH FACEBOOK",
            icon: const Icon(
              Icons.facebook,
              color: Color(0xFF1877F2),
              size: 26,
            ),
            onPressed: () {},
          ),

          const SizedBox(height: 14),

          MySocialButton(
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
    );
  }
}
