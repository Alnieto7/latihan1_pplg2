import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOutlined;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 48),
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: isOutlined
          ? OutlinedButton(onPressed: onPressed, child: Text(text))
          : ElevatedButton(onPressed: onPressed, style: style, child: Text(text)),
    );
  }
}
