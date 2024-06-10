import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  final double fontSize;
  final String title;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  final VoidCallback onPressed;

  ReusableListTile(
      {Key? key,
      required this.title,
      this.fontSize = 18.0,
      required this.icon,
      required this.iconColor,
      required this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: fontSize, color: textColor),
      ),
      onTap: onPressed,
    );
  }
}
