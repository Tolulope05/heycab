import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:interview/model/response_model.dart';

class ApiServices {
  Future<DummyData> getDummyData() async {
    final String response =
        await rootBundle.loadString("assets/json/data.json");
    final data = await json.decode(response);
    print(data);
    DummyData dummyData = DummyData.fromJson(data);
    return dummyData;
    // parse json
  }
}
