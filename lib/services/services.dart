import 'dart:convert';

import 'package:dio/dio.dart';

const url = 'https://animechan.vercel.app/api/random';

class HttpHandler{
  static getAnime() async{
    Response response = await Dio().get(url);
    return response.data;
  }
}