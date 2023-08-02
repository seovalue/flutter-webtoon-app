import 'dart:convert';

import 'package:flutter_app/models/webtoon.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode != 200) throw Error();

    List<WebtoonModel> webtoonModels = [];
    final List<dynamic> webtoons = jsonDecode(response.body);
    for (var webtoon in webtoons) {
      webtoonModels.add(WebtoonModel.fromJson(webtoon));
    }
    return webtoonModels;
  }
}
