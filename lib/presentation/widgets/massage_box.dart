import 'package:YesNoWTF/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AppMassageBox extends StatefulWidget {
  const AppMassageBox({
    Key key,
  }) : super(key: key);

  @override
  _AppMassageBoxState createState() => _AppMassageBoxState();
}

class _AppMassageBoxState extends State<AppMassageBox>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      value: 0,
      duration: Duration(seconds: 3),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AskBloc, AskState>(
      builder: (context, state) {
        String massage;

        if (state is InitialAskState) {
          _controller.forward();
          massage = state.massage;
        }
        if (state is WaitingState) {
          _controller.forward();
          massage = state.massage;
        }
        if (state is Thinking) {
          _controller.repeat();
          massage = state.massage;
        }
        if (state is ReplyState) {
          _controller.forward();
          massage = state.answer;
        }
        if (state is ErrorState) {
          _controller.forward();
          massage = state.massage;
        }

        return FadeTransition(
          opacity: _controller,
          child: buildText(massage),
        );
      },
    );
  }

  Padding buildText(String text) {
    return Padding(
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: GoogleFonts.amiko(
              fontSize: 47,
              color: Color.fromRGBO(20, 13, 45, 1),
              height: 1.0,
              letterSpacing: 0.3),
        ),
      ),
      padding: EdgeInsets.fromLTRB(36, 30, 36, 50),
    );
  }
}
