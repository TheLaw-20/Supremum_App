import 'package:flutter/material.dart';

class MiniCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color color1;
  final Color color2;
  final Color color3;

  const MiniCard(
      {required this.color,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.text,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
              border: Border.all(color: color1),
              boxShadow: [
                BoxShadow(color: color2, blurRadius: 2
                    )
              ]),
          child: Icon(icon, color: color3,),
        ),
        SizedBox(height: 5,),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold
            ),
        ),
      ],
    );
  }
}