import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final void Function() onPressed;
  SocialButton({
    @required this.icon,
    @required this.color,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      elevation: 15,
      shape: CircleBorder(),
      margin: EdgeInsets.all(8),
      child: RawMaterialButton(
        padding: EdgeInsets.all(5),
        fillColor: Colors.white,
        hoverColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            icon,
            color: color,
            size: 35,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
