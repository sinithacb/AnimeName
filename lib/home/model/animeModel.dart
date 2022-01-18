// To parse this JSON data, do
//
//     final anime = animeFromJson(jsonString);

import 'dart:convert';

Anime animeFromJson(String str) => Anime.fromJson(json.decode(str));

String animeToJson(Anime data) => json.encode(data.toJson());

class Anime {
  Anime({
    this.anime,
    this.character,
    this.quote,
  });

  String? anime;
  String? character;
  String? quote;

  factory Anime.fromJson(Map<String, dynamic> json) => Anime(
    anime: json["anime"],
    character: json["character"],
    quote: json["quote"],
  );

  Map<String, dynamic> toJson() => {
    "anime": anime,
    "character": character,
    "quote": quote,
  };
}
