import 'dart:async';

import 'package:YesNoWTF/core/error/failures.dart';
import 'package:YesNoWTF/core/usecases/usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import './bloc.dart';
import '../../domain/usecases/ask_usecase.dart';

class AskBloc extends Bloc<AskEvent, AskState> {
  final AskUseCase useCase;

  AskBloc({@required this.useCase});

  @override
  AskState get initialState =>
      InitialAskState(massage: "Ask me about something");

  @override
  Stream<AskState> mapEventToState(
    AskEvent event,
  ) async* {
    if (event is Waiting) {
      yield WaitingState();
    }
    if (event is Ask) {
      final askEither = await useCase(event.massage);

      yield* askEither.fold((failure) async* {
        String massage;
        if(failure is ServerFailure){
          massage = "Awe😣😣😣 i feel disconnected";
        }
        if(failure is UnknownFailure){
          massage = "I don't Know what's wrong";
        }
        yield ErrorState(massage: massage);
      }, (right) async* {
        yield ReplyState(answer: right.massage);
      });
    }
  }
}
