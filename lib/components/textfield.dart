import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(232, 255, 255, 255),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(232, 255, 255, 255),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(232, 255, 255, 255)),
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
