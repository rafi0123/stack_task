import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintTxt;
  final Function validator;
  final IconData icon;

  const AuthTextFieldWidget(
      {super.key,
      required this.controller,
      required this.hintTxt,
      required this.validator,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        validator: (val) => validator(),
        decoration: InputDecoration(
          hintText: hintTxt,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
