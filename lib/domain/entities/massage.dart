import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Massage extends Equatable {
  final String massage;

  Massage({@required this.massage}) : super([massage]);
}
