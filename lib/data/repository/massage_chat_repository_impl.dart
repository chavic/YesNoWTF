import 'package:YesNoWTF/core/error/failures.dart';
import 'package:YesNoWTF/core/network/network_info.dart';
import 'package:YesNoWTF/data/model/massage_model.dart';
import 'package:YesNoWTF/data/service/massage_chat_service.dart';
import 'package:YesNoWTF/domain/entities/massage_entity.dart';
import 'package:YesNoWTF/domain/repository/massage_chat_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class MassageChatRepositoryImpl extends MassageChatRepository {
  NetworkInfo networkInfo;
  MassageChatService service;

  MassageChatRepositoryImpl({@required this.networkInfo,@required this.service});

  @override
  Future<Either<Failure, Massage>> getResponse(Massage massage) async {
    try {
      if (await networkInfo.isConnected) {
        MassageModel response = await service.getResponse(MassageModel.fromEntity(massage));
        return  Right(Massage(massage: response.massage));
      } else {
        return Left(ServerFailure());
      }
    } catch (e) {
      return Left(UnknownFailure(error: e));
    }
  }
}
