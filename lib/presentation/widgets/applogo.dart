import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        child: Image.asset("assets/logo/logo.png"),
        padding: EdgeInsets.fromLTRB(70, 85, 70, 50),
      ),
    );
  }
}
