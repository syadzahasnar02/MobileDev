import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  //list variabel parameter yg digunakan
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  const MyTextField({
    super.key, 
    required this.myHint, 
    required this.txtController, 
    required this.radius,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration( 
      hint: Text(myHint),
      
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color.fromARGB(255, 168, 197, 221), width: 2),
        ),
      ),
    );
  }
}
