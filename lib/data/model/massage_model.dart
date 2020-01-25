import 'package:YesNoWTF/domain/entities/massage_entity.dart';
import 'package:meta/meta.dart';

class MassageModel extends Massage {
  MassageModel({@required String massage}) : super(massage: massage);

  factory MassageModel.fromEntity(Massage massage) {
    return MassageModel(massage: massage.massage);
  }
  
  factory MassageModel.fromJson(Map<String, dynamic> jsonMap) {
    return MassageModel(massage: jsonMap["answer"]);
  }
}
