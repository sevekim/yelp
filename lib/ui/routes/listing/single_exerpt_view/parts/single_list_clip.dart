import 'package:flutter/material.dart';

class SingleListChip extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;

  const SingleListChip({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
