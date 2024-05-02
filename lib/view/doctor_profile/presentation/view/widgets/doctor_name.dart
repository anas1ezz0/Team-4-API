import 'package:flutter/material.dart';

class DoctorName extends StatelessWidget {
  const DoctorName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Dr: Osama ali",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
