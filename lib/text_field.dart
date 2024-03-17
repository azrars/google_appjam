import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String labelText;
  final bool obscureText;
  const MyTextField({super.key, this.controller, required this.labelText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromARGB(255, 151, 172, 239),
          )),
          labelText: labelText,
        ),
      ),
    );
  }
}
