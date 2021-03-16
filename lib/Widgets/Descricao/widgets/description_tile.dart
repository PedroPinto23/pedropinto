import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widgets/Descricao/widgets/skills_tile.dart';
import 'package:my_portfolio/styles/styles.dart';

class DescriptionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Text(
            "Android / Ios / Web",
            textAlign: TextAlign.right,
            style: Styles().styleWhiteColor,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.android_rounded,
            color: Colors.green,
          ),
          SizedBox(width: 8),
          Icon(
            FontAwesomeIcons.appStoreIos,
            color: Colors.orange,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.computer,
            color: Colors.cyan,
          ),
        ],
      ),
      SizedBox(height: 40),
      SkillsTile(skill: "Flutter - Dart"),
      SkillsTile(skill: "Firebase / Firebase MlKit"),
      SkillsTile(skill: "Integração de API JSON"),
      SkillsTile(skill: "Métodologias Ágeis (JIRA)"),
      SkillsTile(skill: "Git"),
      SkillsTile(skill: "Bitbucket"),
    ]);
  }
}
