// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);

import 'dart:convert';

class Surah {
  String? arti;
  String? asma;
  String? audio;
  int? ayat;
  String? keterangan;
  String? nama;
  String? nomor;
  String? rukuk;
  String? type;
  String? urut;

  Surah({
    this.arti,
    this.asma,
    this.audio,
    this.ayat,
    this.keterangan,
    this.nama,
    this.nomor,
    this.rukuk,
    this.type,
    this.urut,
  });

  factory Surah.fromRawJson(String str) => Surah.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Surah.fromJson(Map<String, dynamic>? json) => Surah(
        arti: json?["arti"],
        asma: json?["asma"],
        audio: json?["audio"],
        ayat: json?["ayat"],
        keterangan: json?["keterangan"],
        nama: json?["nama"],
        nomor: json?["nomor"],
        rukuk: json?["rukuk"],
        type: json?["type"],
        urut: json?["urut"],
      );

  Map<String, dynamic> toJson() => {
        "arti": arti,
        "asma": asma,
        "audio": audio,
        "ayat": ayat,
        "keterangan": keterangan,
        "nama": nama,
        "nomor": nomor,
        "rukuk": rukuk,
        "type": type,
        "urut": urut,
      };
}
