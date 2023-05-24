import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  late String name;
  late bool scure;
  late Function(String)? function;
  CustomTextField({required this.name, required this.scure, this.function});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: function,
      style: const TextStyle(color: Colors.black),
      obscureText: scure,
      decoration: InputDecoration(
        labelText: name,
        labelStyle: const TextStyle(color: Colors.black38),
        fillColor: const Color(0xFF6AE792),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(
            color: Color(0xFF6AE792),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: const BorderSide(
            color: Color(0xFF6AE792),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
