import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CardProjeto extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  CardProjeto({
    @required this.image,
    this.height,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            child: AlertDialog(
              content: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: image,
                fit: BoxFit.cover,
              ),
            ));
      },
      child: Card(
        margin: EdgeInsets.only(top: 15),
        child: Container(
          height: height,
          width: width,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
