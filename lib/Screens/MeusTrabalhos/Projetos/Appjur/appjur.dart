import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Finalizado/finalizado.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:transparent_image/transparent_image.dart';

class Appjur extends StatelessWidget {
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
              "AppJur",
              style: styleWhiteBigger,
            ),
          ),
          Finalizado(
            texto: "13 dias",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: MaterialButton(
                  hoverColor: Colors.black,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.gif,
                          color: Theme.of(context).primaryColor,
                          size: 42,
                        ),
                        Icon(
                          Icons.looks_one,
                          color: Theme.of(context).primaryColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        child: AlertDialog(
                          content: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: "images/projetos/appjur_video.gif",
                            fit: BoxFit.cover,
                          ),
                        ));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: MaterialButton(
                  hoverColor: Colors.black,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.gif,
                          color: Theme.of(context).primaryColor,
                          size: 42,
                        ),
                        Icon(
                          Icons.looks_two,
                          color: Theme.of(context).primaryColor,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        child: AlertDialog(
                          content: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: "images/projetos/appjur_video2.gif",
                            fit: BoxFit.cover,
                          ),
                        ));
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardProjeto(
                height: 250,
                width: 130,
                image: "images/projetos/appjur.jpg",
              ),
              CardProjeto(
                height: 250,
                width: 130,
                image: "images/projetos/appjur_auth_message.jpg",
              ),
              CardProjeto(
                height: 250,
                width: 130,
                image: "images/projetos/appjur_cadastro.jpg",
              ),
              CardProjeto(
                height: 250,
                width: 130,
                image: "images/projetos/appjur_auth.jpg",
              ),
              CardProjeto(
                height: 250,
                width: 130,
                image: "images/projetos/appjur_auth_verify.jpg",
              ),
              CardProjeto(
                height: 250,
                width: 130,
                image: "images/projetos/appjur_switch_user.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
