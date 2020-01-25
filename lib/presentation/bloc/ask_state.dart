import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AskState extends Equatable {
  AskState([List props = const <dynamic>[]]) : super(props);
}

class InitialAskState extends AskState {
  final String massage;

  InitialAskState({@required this.massage});
}

class WaitingState extends AskState {}

class Thinking extends AskState {}

class ReplyState extends AskState {
  final String answer;

  ReplyState({@required this.answer});
}

class ErrorState extends AskState {
  final String massage;

  ErrorState({@required this.massage});
}
