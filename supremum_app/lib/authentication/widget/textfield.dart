import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hinttext;
  final IconData icon;

  const CustomTextField({ 
    required this.hinttext,
    required this.icon,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(icon),
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
                )),
      ),
    );
  }
}
