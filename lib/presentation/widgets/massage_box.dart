import 'package:YesNoWTF/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AppMassageBox extends StatelessWidget {
  const AppMassageBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AskBloc, AskState>(
      builder: (context, state) {
        String massage;
        if (state is InitialAskState) {
          massage = state.massage;
        }
        if (state is WaitingState) {
          massage = state.massage;
        }
        if (state is Thinking) {
          massage = state.massage;
        }
        if (state is ReplyState) {
          massage = state.answer;
        }
        if (state is ErrorState) {
          massage = state.massage;
        }
        return buildText(massage);
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
