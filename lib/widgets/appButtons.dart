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
            label.length != 0
                ? Text(
                    label,
                    style: TextStyle(color: Colors.black),
                  )
                : SizedBox()
          ],
        ));
  }
}

class FullWidthButton extends StatelessWidget {
  final String label;
  final Function onPress;

  const FullWidthButton({Key key, this.label, this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextButton(
            onPressed: onPress,
            child: Row(
              children: [Text(label), Icon(Icons.chevron_right)],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(color: Colors.white),
    );
  }
}

class OutlineAppButton extends StatelessWidget {
  final String label;
  final Function onPress;

  const OutlineAppButton({Key key, this.label, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        child: Padding(
          child: Text(label),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
