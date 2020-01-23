import 'package:YesNoWTF/core/error/failures.dart';
import 'package:YesNoWTF/domain/entities/massage.dart';
import 'package:dartz/dartz.dart';

abstract class MassageChatRepository{
  Future<Either<Failure, Massage>> getResponse();
}