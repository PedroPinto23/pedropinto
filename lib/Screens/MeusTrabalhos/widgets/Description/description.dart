import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Description extends StatelessWidget {
  final String? description;
  Description({this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        description!,
        textAlign: TextAlign.center,
        style: Styles().styleWhiteColor,
      ),
    );
  }
}
