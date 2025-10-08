import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:latihan1_pplg2/component/controllers/example_controller.dart';

class ExampleBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ExampleController>(()=>ExampleController());
  }
}