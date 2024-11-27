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
      label: SizedBox(
        width: 30,
        height: 25,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
