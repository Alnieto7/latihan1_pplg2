import 'package:get/get.dart';
import 'package:latihan1_pplg2/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  checklogin() async {
   final prefs = await SharedPreferences.getInstance();
    if (prefs.getString("username") != null) {
     Get.offAllNamed(AppRoutes.calculatorPage);
    } else {
       Get.offAllNamed(AppRoutes.loginPage);
     
    }
  }
}
