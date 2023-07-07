import 'dart:convert';

import 'package:al_quran/app/data/models/detail_surah.dart';
import 'package:al_quran/app/data/models/surah.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final http.Client client;
  ApiService({
    required this.client,
  });

  Future<Either<String, List<Surah>>> getAllSurah() async {
    try {
      final response = await client
          .get(Uri.parse("https://api.npoint.io/99c279bb173a6e28359c/data"));
      return Right(List<Surah>.from(
        jsonDecode(response.body).map(
          (x) => Surah.fromJson(x),
        ),
      ).toList());
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, DetailSurah>> getDetaiSurah(int nomorSurah) async {
    try {
      final response = await client
          .get(Uri.parse("https://api.npoint.io/99c279bb173a6e28359c/surat/1"));
      return Right(DetailSurah.fromJson(jsonDecode(response.body)));
    } catch (e) {
      return left(e.toString());
    }
  }
}
