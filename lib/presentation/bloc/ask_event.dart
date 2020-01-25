import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AskEvent extends Equatable {
  AskEvent([List props = const <dynamic>[]]) : super(props);
}

class Ask extends AskEvent {
  final String massage;

  Ask({@required this.massage});
}

class Waiting extends AskEvent {
  final String currentText;

  Waiting({@required this.currentText});
}
