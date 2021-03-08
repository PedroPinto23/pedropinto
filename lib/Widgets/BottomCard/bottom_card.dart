import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Portfólio totalmente desenvolvido por mim",
                style: Styles().stylesmallFont,
              ),
              SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    onSurface: Colors.white,
                    primary: Theme.of(context).primaryColor),
                onPressed: () {
                  try {
                    launch("https://github.com/PedroPinto23/pedropinto");
                  } catch (e) {
                    print(e);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(FontAwesomeIcons.github),
                    SizedBox(width: 8),
                    Text("Repositório do projeto"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
