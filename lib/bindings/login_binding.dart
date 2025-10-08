import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/login_controller.dart';

class LoginBinding  extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(()=>LoginController());
  }

}