import 'package:flutter/material.dart';

class QuestionContainer2 extends StatelessWidget {
  const QuestionContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade100,
            boxShadow: [
              BoxShadow(blurRadius: 2, offset: Offset(1, 1), color: Colors.grey)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'FET - Faculty of Engineering and Technology',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}