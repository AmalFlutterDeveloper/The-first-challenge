import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person_pin),
        hintText: hintText,
        hintStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        border: OutlineInputBorder(
            borderSide:
                BorderSide(width: 0, color: Colors.black.withOpacity(0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.black.withOpacity(0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.black.withOpacity(0)),
        ),
      ),
    );
  }
}
