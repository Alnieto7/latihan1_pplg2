import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/splashScreen_controller.dart';

class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<SplashscreenController>(()=>SplashscreenController());
  }

}