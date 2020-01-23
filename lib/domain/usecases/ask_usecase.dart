import 'package:YesNoWTF/core/error/failures.dart';
import 'package:YesNoWTF/core/usecases/usecase.dart';
import 'package:YesNoWTF/domain/entities/massage.dart';
import 'package:YesNoWTF/domain/repository/massage_chat_repository.dart';
import 'package:dartz/dartz.dart';

class AskUseCase extends UseCase<Massage, String> {
  MassageChatRepository repository;

  AskUseCase({this.repository});

  @override
  Future<Either<Failure, Massage>> call(String userParams) async {
    return await repository.getResponse();
  }
}
