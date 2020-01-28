import 'package:YesNoWTF/presentation/bloc/ask_bloc.dart';
import 'package:YesNoWTF/presentation/bloc/ask_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    Key key,
  }) : super(key: key);

  void dispatchAskEvent(String userText, BuildContext context) {
    BlocProvider.of<AskBloc>(context).dispatch(Ask(massage: userText));
    BlocProvider.of<AskBloc>(context).dispatch(Empty());
  }

  void dispatchWaitingEvent(String userText, BuildContext context) {
    BlocProvider.of<AskBloc>(context).dispatch(Waiting(currentText: userText));
    BlocProvider.of<AskBloc>(context).dispatch(Empty());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: TextField(
        onChanged: (value) {
          if (value.indexOf("?") > 0) {
            dispatchAskEvent(value, context);
          } else {
            dispatchWaitingEvent(value, context);
          }
        },
        autofocus: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(196, 196, 196, 1),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
    );
  }
}
