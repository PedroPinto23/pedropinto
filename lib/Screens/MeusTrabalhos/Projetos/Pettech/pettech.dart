import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:transparent_image/transparent_image.dart';

class Pettech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle styleWhiteBigger = styles.styleWhiteBigger;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 5),
            alignment: Alignment.topCenter,
            child: Text(
              "PetTech",
              style: styleWhiteBigger,
            ),
          ),
          MaterialButton(
            shape: CircleBorder(),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.videocam,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  child: AlertDialog(
                    content: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: "images/projetos/pettech_demo.gif",
                      fit: BoxFit.cover,
                    ),
                  ));
            },
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardProjeto(
                height: 170,
                width: 280,
                image: "images/projetos/pettech_telas.png",
              ),
              CardProjeto(
                height: 170,
                width: 280,
                image: "images/projetos/pettech_demo.png",
              ),
              CardProjeto(
                height: 170,
                width: 280,
                image: "images/projetos/pettech_telas2.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
