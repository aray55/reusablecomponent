import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor; // For text only
  final Color? iconColor; // New parameter for icon
  final double fontSize;
  final bool isUnderline;
  final IconData? icon;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.blue,
    this.iconColor, // New optional parameter
    this.fontSize = 16.0,
    this.isUnderline = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor, // Affects text only
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(
              icon,
              size: fontSize,
              color: iconColor ?? textColor, // Use iconColor if provided
            ),
          if (icon != null) const SizedBox(width: 5),
          CustomText(text: text),
        ],
      ),
    );
  }
}