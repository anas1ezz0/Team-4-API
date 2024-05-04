import 'package:flutter/material.dart';

class DoctorName extends StatelessWidget {
   DoctorName({super.key,required this.color});

  Color? color;

  @override
  Widget build(BuildContext context) {
    return  Text(
      "Dr: Osama ali",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
