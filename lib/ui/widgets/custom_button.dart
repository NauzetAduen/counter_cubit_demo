import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback function;
  final IconData iconData;
  final Color color;
  const CustomButton(this.function, this.iconData, this.color);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
      child: Icon(iconData, size: 40),
      onPressed: function,
    );
  }
}
