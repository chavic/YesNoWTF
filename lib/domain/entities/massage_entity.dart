import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Massage extends Equatable {
  final String massage;

  Massage({@required this.massage}) : super([massage]);
}
