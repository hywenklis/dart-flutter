import 'package:flutter/material.dart';

class TextLabelMyWidget extends StatelessWidget {
  final String text;
  const TextLabelMyWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
    );
  }
}
