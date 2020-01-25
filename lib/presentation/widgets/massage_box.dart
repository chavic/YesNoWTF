import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppMassageBox extends StatelessWidget {
  const AppMassageBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(
        "Ask About Someting",
        textAlign: TextAlign.left,
        style: GoogleFonts.amiko(
            fontSize: 47,
            color: Color.fromRGBO(20, 13, 45, 1),
            height: 0.8,
            letterSpacing: 0.3),
      ),
      padding: EdgeInsets.fromLTRB(36, 30, 80, 50),
    );
  }
}
