import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  final Icon? icon;
  final String? title;
  final String? link;
  ButtonRow({@required this.icon, @required this.title, @required this.link});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        hoverColor: Colors.black26,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
        color: Colors.white,
        onPressed: () {
          try {
            launch(link!);
          } catch (e) {
            print(e);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? Container(),
            SizedBox(width: 5),
            Text(
              title!,
              style: Styles().stylesmallFont,
            )
          ],
        ),
      ),
    );
  }
}
