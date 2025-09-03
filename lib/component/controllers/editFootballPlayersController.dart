import 'package:get/get.dart';
import 'package:latihan1_pplg2/model/football_player_model.dart';
import 'footballPlayerController.dart';

class EditFootballPlayersController extends GetxController {
  late int index;
  late FootballPlayer player;

  @override
  void onInit() {
    super.onInit();
    index = Get.arguments as int;
    player = Get.find<FootballPlayerController>().players[index];
  }

  void saveChanges(String name, String position, int number) {
    Get.find<FootballPlayerController>()
        .updatePlayer(index, name, position, number);
  }
}
