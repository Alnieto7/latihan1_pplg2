import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/calculatorController.dart';


class CalculatorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PengontrolKalkulator>(()=>PengontrolKalkulator());
  }
  

}