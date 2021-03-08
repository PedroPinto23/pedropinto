import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/platform-type.dart';
import 'package:transparent_image/transparent_image.dart';

class CardProjeto extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  CardProjeto({
    required this.image,
    this.height,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    contentPadding: EdgeInsets.all(8),
                    content: platformType(kTransparentImage, image),
                  ));
        },
        child: Card(
          margin: EdgeInsets.only(top: 15),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2)),
            child: platformType(kTransparentImage, image),
          ),
        ),
      ),
    );
  }
}
