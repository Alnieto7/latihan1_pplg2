
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihan1_pplg2/LoginPage.dart';
import 'package:latihan1_pplg2/bindings/calculator_binding.dart';
import 'package:latihan1_pplg2/bindings/contact_binding.dart';
import 'package:latihan1_pplg2/bindings/example_binding.dart';
import 'package:latihan1_pplg2/bindings/login_binding.dart';
import 'package:latihan1_pplg2/component/pages/contactPage.dart';
import 'package:latihan1_pplg2/component/pages/example_transform_page.dart';
import 'package:latihan1_pplg2/fragments/calculatorPage.dart';
import 'package:latihan1_pplg2/component/pages/editPlayersPage.dart';
import 'package:latihan1_pplg2/fragments/footballPlayer.dart';
import 'package:latihan1_pplg2/routes/routes.dart';


class AppPages {
 static final pages = [
 GetPage(name: AppRoutes.calculatorPage, page: ()=> HalamanKalkulator(),binding: CalculatorBinding()),
  GetPage(name: AppRoutes.footballPage, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.editPlayersPage, page: () => EditPlayersPage()),
    GetPage(name: AppRoutes.loginPage, page: () => LoginPage (), binding:  LoginBinding()),
     GetPage(name: AppRoutes.contactPage, page: () => ContactPage (), binding:  ContactBinding()),
     GetPage(name: AppRoutes.ExampleTransformPage, page: () => ExampleTransformPage (), binding:  ExampleBinding()),
    
  ];
 
  
}