import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class DemoCard extends StatelessWidget {
  final bool isCardSingle;
  final String? path1;
  final String? path2;
  DemoCard({@required this.path1, this.path2 = "", this.isCardSingle = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: isCardSingle
          ? demoCardTile(context, path1!)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                demoCardTile(context, path1!, icon: Icons.looks_one),
                demoCardTile(context, path2!, icon: Icons.looks_two),
              ],
            ),
    );
  }

  Widget demoCardTile(BuildContext context, String path, {IconData? icon}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: MaterialButton(
        hoverColor: Colors.black,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: isCardSingle
              ? Icon(
                  Icons.gif,
                  color: Theme.of(context).primaryColor,
                  size: 42,
                )
              : Row(
                  children: [
                    Icon(
                      Icons.gif,
                      color: Theme.of(context).primaryColor,
                      size: 42,
                    ),
                    Icon(
                      icon,
                      color: Theme.of(context).primaryColor,
                      size: 32,
                    ),
                  ],
                ),
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: path,
                      fit: BoxFit.cover,
                    ),
                  ));
        },
      ),
    );
  }
}
