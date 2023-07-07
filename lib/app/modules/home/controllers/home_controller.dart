import 'dart:convert';

import 'package:al_quran/app/data/models/surah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<List<Surah>> getAllSurah() async {
    Uri url = Uri.parse("https://api.npoint.io/99c279bb173a6e28359c/data");
    var res = await http.get(url);

    final List<dynamic> data = jsonDecode(res.body);

    if (data == [] || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => Surah.fromJson(e)).toList();
    }
  }
}
