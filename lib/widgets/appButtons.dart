import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPress;
  final double size;

  AppButton({this.label, this.icon, this.onPress, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: size,
            ),
            Text(
              label,
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }
}