import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan1_pplg2/model/football_player_model.dart';
import 'package:latihan1_pplg2/routes/routes.dart';

class FootballPlayerController extends GetxController {
  var players =
      <FootballPlayer>[
        FootballPlayer(
          name: "Lionel Messi",
          position: "Forward",
          number: 10,
          image: "images/messi.jpg",
        ),
        FootballPlayer(
          name: "Cristiano Ronaldo",
          position: "Forward",
          number: 7,
          image: "images/ronaldo.jpg",
        ),
      ].obs;

  // 🔹 State responsif
  var isWidescreen = false.obs;

  // 🔹 Update ukuran layar saat layout berubah
  void updateScreenSize(BoxConstraints constraints) {
    if (constraints.maxWidth > 600) {
      isWidescreen.value = true;
    } else {
      isWidescreen.value = false;
    }
  }

  // 🔹 Navigasi ke halaman edit
  void goToEditPage(int index) {
    Get.toNamed(AppRoutes.editPlayersPage, arguments: index);
  }

  // 🔹 Update data pemain
  void updatePlayer(
    int index,
    String newName,
    String newPosition,
    int newNumber,
  ) {
    players[index].name = newName;
    players[index].position = newPosition;
    players[index].number = newNumber;
    update();
  }
}
