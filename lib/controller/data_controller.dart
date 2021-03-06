import 'dart:convert';
import 'dart:developer';

import 'package:secondaryflutterapps/models/data_mode.dart';
import 'package:http/http.dart' as http;

class DataController {
  var url = Uri.parse(
      'https://u73olh7vwg.execute-api.ap-northeast-2.amazonaws.com/staging/book?nim=2201835883&nama=Fahrul');

  Future<DataModel> fetchData() async {
    print("function accessted");

    final res = await http.get(url);

    if (res.statusCode == 200) {
      log(res.body);
      return DataModel.fromJson(jsonDecode(res.body));
    } else {
      print("Failed");
      throw Exception("Fialed");
    }
  }

  Future<String> fetchPartner() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/cahyo-refactory/RSP-DataSet-SkilTest-FE/main/partner.json'));

    if (response.statusCode == 200) {
      log(response.body);
    }

    return response.body;
  }
}
