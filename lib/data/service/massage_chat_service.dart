import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../model/massage_model.dart';

abstract class MassageChatService {
  Future<MassageModel> getResponse(MassageModel massageModel);
}

class YesNOAPIChat extends MassageChatService {
  @override
  Future<MassageModel> getResponse(MassageModel massageModel) async {
    String url = "https://yesno.wtf/api";
    Response response = await http.get(url);
    Map<String, dynamic> jsonResponse = json.decode(response.body);

    return MassageModel(massage: jsonResponse["answer"]);
  }
}
