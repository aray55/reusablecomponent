import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_text.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData? icon;
  final Color color;
  final Color textColor;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    this.icon,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            if (icon != null) Icon(icon, size: 40, color: textColor),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                  ),
                  const SizedBox(height: 6),
                  CustomText(text:description,
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
