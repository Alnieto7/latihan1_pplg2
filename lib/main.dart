import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/pages/footballPlayer.dart';
import 'package:latihan1_pplg2/routes/pages.dart';
import 'package:latihan1_pplg2/routes/routes.dart';
import 'component/pages/calculatorPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator GetX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),

     

      initialRoute: AppRoutes.footballPage,
      getPages: AppPages.pages,
    );
  }
}
