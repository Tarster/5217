import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 120,color: Colors.white),);
  }
}
