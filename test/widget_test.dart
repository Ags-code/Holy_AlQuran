import 'dart:convert';
import 'package:al_quran/app/data/models/Ayat.dart';
import 'package:http/http.dart' as http;

// void main() async {
//   Future<DetailSurah> getDetailSurah(String id) async {
//     Uri url = Uri.parse("https://equran.id/api/v2/surat/$id");
//     var res = await http.get(url);

//     Map<String, dynamic> data =
//         (json.decode(res.body) as Map<String, dynamic>)["data"];

//     DetailSurah test = DetailSurah.fromJson(data);
//     print(test.ayat);
//     return DetailSurah.fromJson(data);
//   }

//   await getDetailSurah(1.toString());
// }

void main() async {
  var res = await http
      .get(Uri.parse("https://quran-api-id.vercel.app/surahs/112/ayahs/2"));
  Map<String, dynamic> data = json.decode(res.body);
  
  Ayat ayat = Ayat.fromJson(data);

  print(ayat.tafsir?.kemenag?.short);
}
