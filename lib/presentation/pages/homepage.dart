import 'package:YesNoWTF/presentation/bloc/ask_bloc.dart';
import 'package:YesNoWTF/presentation/widgets/applogo.dart';
import 'package:YesNoWTF/presentation/widgets/custom_textfiled.dart';
import 'package:YesNoWTF/presentation/widgets/massage_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        builder: (_) => sl<AskBloc>(),
        child: Stack(
          children: <Widget>[
            Container(
                //child: Image.asset("assets/x.png"),
                ),
            ListView(
              children: <Widget>[buildLayout(context)],
            ),
          ],
        ),
      ),
    );
  }

  Container buildLayout(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: AppLogo(),
          ),
          Expanded(
            flex: 9,
            child: AppMassageBox(),
          ),
          Expanded(
            flex: 10,
            child: CustomTextFiled(),
          )
        ],
      ),
    );
  }
}
