import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AskState extends Equatable {
  AskState([List props = const <dynamic>[]]) : super(props);
}

class InitialAskState extends AskState {
  final String massage;

  InitialAskState({@required this.massage});
}

class WaitingState extends AskState {
  final String massage;

  WaitingState({@required this.massage});
}

class Thinking extends AskState {
  final String massage;

  Thinking({@required this.massage});
}

class ReplyState extends AskState {
  final String answer;

  ReplyState({@required this.answer});
}

class ErrorState extends AskState {
  final String massage;

  ErrorState({@required this.massage});
}
