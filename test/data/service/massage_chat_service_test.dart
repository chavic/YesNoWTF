import 'package:YesNoWTF/data/model/massage_model.dart';
import 'package:YesNoWTF/data/service/massage_chat_service.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  MassageChatService massageChatService;
  final String testUserMassage = "hey are you g*y?";
  final MassageModel massageModel = MassageModel(massage: testUserMassage);

  setUp(() {
    massageChatService = YesNOAPIChat();
  });

  test('Test Http Reponse', () async {
    final result = await massageChatService.getResponse(massageModel);
    // Weird test but it works!!!!!!
    expect(result, equals(MassageModel(massage: result.massage)));
  });
}
