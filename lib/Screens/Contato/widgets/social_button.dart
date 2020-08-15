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
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(right: 20),
        child: MaterialButton(
          color: Colors.white,
          shape: CircleBorder(),
          hoverColor: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              icon,
              color: color,
              size: 32,
            ),
          ),
          onPressed: onPressed,
        ));
  }
}
