import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:weather/home/model/animeModel.dart';
import 'package:weather/services/services.dart';

class AnimeController extends GetxController {
  Rx<Anime> anime = Anime().obs;
  RxBool isApiCall = false.obs;
   fetchData() async {
    var res =await  HttpHandler.getAnime();
    var jsonString=json.encode(res);
    anime.value= animeFromJson(jsonString);
    if (kDebugMode) {
      print(anime.value.character);
    }
  }
}
