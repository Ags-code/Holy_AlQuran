// To parse this JSON data, do
//
//     final ayat = ayatFromJson(jsonString);

import 'dart:convert';

class Ayat {
    Number? number;
    String? arab;
    String? translation;
    Audio? audio;
    Image? image;
    Tafsir? tafsir;
    Meta? meta;

    Ayat({
        this.number,
        this.arab,
        this.translation,
        this.audio,
        this.image,
        this.tafsir,
        this.meta,
    });

    factory Ayat.fromRawJson(String str) => Ayat.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Ayat.fromJson(Map<String, dynamic> json) => Ayat(
        number: json["number"] == null ? null : Number.fromJson(json["number"]),
        arab: json["arab"],
        translation: json["translation"],
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        tafsir: json["tafsir"] == null ? null : Tafsir.fromJson(json["tafsir"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "number": number?.toJson(),
        "arab": arab,
        "translation": translation,
        "audio": audio?.toJson(),
        "image": image?.toJson(),
        "tafsir": tafsir?.toJson(),
        "meta": meta?.toJson(),
    };
}

class Audio {
    String? alafasy;
    String? ahmedajamy;
    String? husarymujawwad;
    String? minshawi;
    String? muhammadayyoub;
    String? muhammadjibreel;

    Audio({
        this.alafasy,
        this.ahmedajamy,
        this.husarymujawwad,
        this.minshawi,
        this.muhammadayyoub,
        this.muhammadjibreel,
    });

    factory Audio.fromRawJson(String str) => Audio.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        alafasy: json["alafasy"],
        ahmedajamy: json["ahmedajamy"],
        husarymujawwad: json["husarymujawwad"],
        minshawi: json["minshawi"],
        muhammadayyoub: json["muhammadayyoub"],
        muhammadjibreel: json["muhammadjibreel"],
    );

    Map<String, dynamic> toJson() => {
        "alafasy": alafasy,
        "ahmedajamy": ahmedajamy,
        "husarymujawwad": husarymujawwad,
        "minshawi": minshawi,
        "muhammadayyoub": muhammadayyoub,
        "muhammadjibreel": muhammadjibreel,
    };
}

class Image {
    String? primary;
    String? secondary;

    Image({
        this.primary,
        this.secondary,
    });

    factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        primary: json["primary"],
        secondary: json["secondary"],
    );

    Map<String, dynamic> toJson() => {
        "primary": primary,
        "secondary": secondary,
    };
}

class Meta {
    int? juz;
    int? page;
    int? manzil;
    int? ruku;
    int? hizbQuarter;
    Sajda? sajda;

    Meta({
        this.juz,
        this.page,
        this.manzil,
        this.ruku,
        this.hizbQuarter,
        this.sajda,
    });

    factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        juz: json["juz"],
        page: json["page"],
        manzil: json["manzil"],
        ruku: json["ruku"],
        hizbQuarter: json["hizbQuarter"],
        sajda: json["sajda"] == null ? null : Sajda.fromJson(json["sajda"]),
    );

    Map<String, dynamic> toJson() => {
        "juz": juz,
        "page": page,
        "manzil": manzil,
        "ruku": ruku,
        "hizbQuarter": hizbQuarter,
        "sajda": sajda?.toJson(),
    };
}

class Sajda {
    bool? recommended;
    bool? obligatory;

    Sajda({
        this.recommended,
        this.obligatory,
    });

    factory Sajda.fromRawJson(String str) => Sajda.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
        recommended: json["recommended"],
        obligatory: json["obligatory"],
    );

    Map<String, dynamic> toJson() => {
        "recommended": recommended,
        "obligatory": obligatory,
    };
}

class Number {
    int? inQuran;
    int? inSurah;

    Number({
        this.inQuran,
        this.inSurah,
    });

    factory Number.fromRawJson(String str) => Number.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Number.fromJson(Map<String, dynamic> json) => Number(
        inQuran: json["inQuran"],
        inSurah: json["inSurah"],
    );

    Map<String, dynamic> toJson() => {
        "inQuran": inQuran,
        "inSurah": inSurah,
    };
}

class Tafsir {
    Kemenag? kemenag;
    String? quraish;
    String? jalalayn;

    Tafsir({
        this.kemenag,
        this.quraish,
        this.jalalayn,
    });

    factory Tafsir.fromRawJson(String str) => Tafsir.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Tafsir.fromJson(Map<String, dynamic> json) => Tafsir(
        kemenag: json["kemenag"] == null ? null : Kemenag.fromJson(json["kemenag"]),
        quraish: json["quraish"],
        jalalayn: json["jalalayn"],
    );

    Map<String, dynamic> toJson() => {
        "kemenag": kemenag?.toJson(),
        "quraish": quraish,
        "jalalayn": jalalayn,
    };
}

class Kemenag {
    String? short;
    String? long;

    Kemenag({
        this.short,
        this.long,
    });

    factory Kemenag.fromRawJson(String str) => Kemenag.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Kemenag.fromJson(Map<String, dynamic> json) => Kemenag(
        short: json["short"],
        long: json["long"],
    );

    Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
    };
}
