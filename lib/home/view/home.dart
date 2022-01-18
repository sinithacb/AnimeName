import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/home/controller/animeController.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnimeController animeController = Get.put(AnimeController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              animeController.fetchData();
              animeController.isApiCall.value = true;
            },
            child: Container(
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text("Hello"),
              ),
            ),
          ),
          Obx(() => animeController.isApiCall.isTrue
              ? Text(animeController.anime.value.character.toString())
              : Container())
        ],
      ),
    );
  }
}
