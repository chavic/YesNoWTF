import 'package:YesNoWTF/data/repository/massage_chat_repository_impl.dart';
import 'package:YesNoWTF/data/service/massage_chat_service.dart';
import 'package:YesNoWTF/presentation/bloc/ask_bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';

import 'core/network/network_info.dart';
import 'domain/repository/massage_chat_repository.dart';
import 'domain/usecases/ask_usecase.dart';

final sl = GetIt.instance; // This is the service locator

Future<void> init() {
  // Presentation
  sl.registerFactory(() => AskBloc(useCase: sl()));
  // Domain
  sl.registerLazySingleton(() => AskUseCase(repository: sl()));
  // Repository
  sl.registerLazySingleton<MassageChatRepository>(
      () => MassageChatRepositoryImpl(networkInfo: sl(), service: sl()));
  // Services
  sl.registerLazySingleton<MassageChatService>(() => YesNOAPIChat());
  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  // External
  sl.registerLazySingleton<DataConnectionChecker>(
      () => DataConnectionChecker());
}
