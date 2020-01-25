import 'package:YesNoWTF/core/network/network_info.dart';
import 'package:YesNoWTF/data/repository/massage_chat_repository_impl.dart';
import 'package:YesNoWTF/data/service/massage_chat_service.dart';
import 'package:YesNoWTF/domain/entities/massage_entity.dart';
import 'package:YesNoWTF/domain/repository/massage_chat_repository.dart';
import 'package:YesNoWTF/domain/usecases/ask_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

main() {
  AskUseCase useCase;
  NetworkInfo networkInfo;
  MassageChatService service;
  MassageChatRepository repository;
  String testQuestion = "are you a dumb app?";
  setUp(() {
    networkInfo = NetworkInfoImpl(DataConnectionChecker());
    service = YesNOAPIChat();
    repository =
        MassageChatRepositoryImpl(networkInfo: networkInfo, service: service);
    useCase = AskUseCase(repository: repository);
  });

  test("Usecase Must give a valid response", () async {

    final result = await useCase(testQuestion);
    
    expect(result, isInstanceOf<Right>());
  });
}
