
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihan1_pplg2/component/pages/calculatorPage.dart';
import 'package:latihan1_pplg2/component/pages/editPlayersPage.dart';
import 'package:latihan1_pplg2/component/pages/footballPlayer.dart';
import 'package:latihan1_pplg2/routes/routes.dart';

class AppPages {
 static final pages = [
 GetPage(name: AppRoutes.calculatorPage, page: ()=> HalamanKalkulator()),
  GetPage(name: AppRoutes.footballPage, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.editPlayersPage, page: () => EditPlayersPage()),
  ];
 
  
}