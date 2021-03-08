import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class SkillsTile extends StatelessWidget {
  final String? skill;
  SkillsTile({this.skill});
  @override
  Widget build(BuildContext context) {
    Icon checkIcon = Icon(Icons.check, color: Colors.green);
    return Row(
      children: [
        checkIcon,
        SizedBox(width: 3),
        Text(skill!, style: Styles().styleWhiteColor),
      ],
    );
  }
}
