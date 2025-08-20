
import 'package:get/get.dart';
import 'package:latihan1_pplg2/model/football_player_model.dart';






class FootballPlayerController extends GetxController {
  var players = <FootballPlayer>[
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

  void updatePlayer(int index, String newName, String newPosition, int newNumber) {
    players[index].name = newName;
    players[index].position = newPosition;
    players[index].number = newNumber; 
     update(); 
  }
}
