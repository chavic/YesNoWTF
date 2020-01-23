import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class AskBloc extends Bloc<AskEvent, AskState> {
  @override
  AskState get initialState => InitialAskState();

  @override
  Stream<AskState> mapEventToState(
    AskEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
