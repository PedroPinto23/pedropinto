import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailForm extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final TextEditingController controller;
  final int maxLines;
  EmailForm({
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.maxLines = 1,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(8),
          child: TextFormField(
            validator: (text) {
              if (text.isEmpty) {
                return "Campo obrigatório";
              }
              return null;
            },
            maxLines: maxLines,
            controller: controller,
            style: GoogleFonts.oxygen(
              color: Colors.black,
              fontSize: 18,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              hintStyle: GoogleFonts.oxygen(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
              ),
            ),
          )),
    );
  }
}
