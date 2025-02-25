import 'package:flutter/material.dart';
import 'package:reusable_component/reusable_component/custom_text.dart';

class LoadingButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const LoadingButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  void _handlePress() async {
    setState(() => _isLoading = true);
    await Future.delayed(Duration(seconds: 3)); // محاكاة عملية تحميل
    setState(() => _isLoading = false);
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color,
        foregroundColor: widget.textColor,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: _isLoading ? null : _handlePress,
      child: _isLoading
          ? SizedBox(
              width: 20, height: 20,
              child: CircularProgressIndicator(color: widget.textColor, strokeWidth: 2),
            )
          : CustomText(text:widget.title),
    );
  }
}
