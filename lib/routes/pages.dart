
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihan1_pplg2/bindings/calculator_binding.dart';
import 'package:latihan1_pplg2/fragments/calculatorPage.dart';
import 'package:latihan1_pplg2/component/pages/editPlayersPage.dart';
import 'package:latihan1_pplg2/fragments/footballPlayer.dart';
import 'package:latihan1_pplg2/routes/routes.dart';

class AppPages {
 static final pages = [
 GetPage(name: AppRoutes.calculatorPage, page: ()=> HalamanKalkulator(),binding: CalculatorBinding()),
  GetPage(name: AppRoutes.footballPage, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.editPlayersPage, page: () => EditPlayersPage()),
  ];
 
  
}