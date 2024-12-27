import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  const CustomContainer({
    required this.text,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade300),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
