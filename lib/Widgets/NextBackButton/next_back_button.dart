import 'package:flutter/material.dart';

class NextBackButton extends StatelessWidget {
  final AlignmentGeometry alignment;
  final IconData icone;
  final Widget widget;
  final double dx;
  NextBackButton({
    @required this.alignment,
    @required this.icone,
    @required this.widget,
    @required this.dx,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      alignment: alignment,
      child: MaterialButton(
        shape: CircleBorder(),
        hoverColor: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icone,
            color: Colors.white,
            size: 52,
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => widget,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = Offset(dx, 0);
                var end = Offset.zero;
                var curve = Curves.ease;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              }));
        },
      ),
    );
  }
}
