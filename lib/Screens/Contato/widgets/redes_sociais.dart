import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Screens/Contato/widgets/social_button.dart';
import 'package:url_launcher/url_launcher.dart';

class RedesSociais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButton(
            icon: FontAwesomeIcons.linkedinIn,
            color: Colors.blue,
            onPressed: () {
              launch(
                  "https://www.linkedin.com/in/pedro-henrique-de-oliveira-pinto-04340612b/");
            },
          ),
          SocialButton(
            icon: FontAwesomeIcons.githubAlt,
            color: Colors.black,
            onPressed: () {
              launch("https://github.com/PedroPinto23");
            },
          ),
          SocialButton(
            icon: FontAwesomeIcons.twitter,
            color: Colors.blue,
            onPressed: () {
              launch("https://twitter.com/pedro_pinto95");
            },
          ),
        ],
      ),
    );
  }
}
