import 'package:flutter/material.dart';

class ImagemFundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            "images/_kungfury.jpg",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 18, 81),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
