import 'package:belajarflutter/component/my_textfield.dart';
import 'package:belajarflutter/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static const background = Color.fromARGB(255, 224, 230, 242);
  static const primary = Color.fromARGB(255, 44, 62, 96);
  static const accent = Color.fromARGB(255, 255, 152, 0);
  static const white = Colors.white;
}

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: const Text(
          "Kalkulator",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            MyTextField(
              myHint: "Input angka 1",
              txtController: txtangka1,
              radius: 10,
            ),
            const SizedBox(height: 12),
            MyTextField(
              myHint: "Input angka 2",
              txtController: txtangka2,
              radius: 10,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton("+", () {
                  controller.tambah(txtangka1.text, txtangka2.text);
                }),
                _buildButton("-", () {
                  controller.kurang(txtangka1.text, txtangka2.text);
                }),
                _buildButton("*", () {
                  controller.kali(txtangka1.text, txtangka2.text);
                }),
                _buildButton("/", () {
                  controller.bagi(txtangka1.text, txtangka2.text);
                }),
              ],
            ),

            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.primary, width: 1.5),
              ),
              child: Obx(
                () => Text(
                  controller.hasilHitung.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accent,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}