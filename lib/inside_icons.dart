// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class insideIcons extends StatelessWidget {
  const insideIcons({required this.Iconi, required this.gender});

  final IconData Iconi;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Iconi,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
        ),
      ],
    );
  }
}
