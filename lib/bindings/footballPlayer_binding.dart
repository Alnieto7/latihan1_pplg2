import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:latihan1_pplg2/component/controllers/footballPlayerController.dart';
import 'package:latihan1_pplg2/model/football_player_model.dart';

class FootballplayerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
      Get.lazyPut<FootballPlayerController>(()=>FootballPlayerController());

  }
  
}  