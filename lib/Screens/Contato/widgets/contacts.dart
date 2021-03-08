import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Screens/Contato/widgets/social_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            color: Colors.grey[900],
            child: Container(
              width: 500,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SocialButton(
                    color: Colors.red[900],
                    icon: Icons.email,
                    onPressed: () {
                      launch("mailto:pedro.dev42@gmail.com");
                    },
                  ),
                  Text(
                    "Enviar um Email",
                    style: GoogleFonts.chelseaMarket(
                        color: Colors.white, fontSize: 22, letterSpacing: 1.2),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.grey[900],
            child: Container(
              width: 500,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SocialButton(
                    color: Colors.green[600],
                    icon: FontAwesomeIcons.whatsapp,
                    onPressed: () {
                      launch(
                          "https://api.whatsapp.com/send?phone=5521971234498");
                    },
                  ),
                  Text(
                    "Conversar pelo WhatsApp",
                    style: GoogleFonts.chelseaMarket(
                        color: Colors.white, fontSize: 22, letterSpacing: 1.2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
