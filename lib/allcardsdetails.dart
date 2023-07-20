// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class allcardsdetails extends StatelessWidget {
  const allcardsdetails({required this.colour, required this.cardschild});
  final Color colour;
  final Widget cardschild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: cardschild,
    );
  }
}
