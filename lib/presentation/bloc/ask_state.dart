import 'package:equatable/equatable.dart';

abstract class AskState extends Equatable {
  AskState([List props = const <dynamic>[]]) : super(props);
}

class InitialAskState extends AskState {
  @override
  List<Object> get props => [];
}
