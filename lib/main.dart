import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/pages/football/footballPlayer.dart';
import 'package:latihan1_pplg2/routes/pages.dart';
import 'package:latihan1_pplg2/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ini penting
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan PPLG 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),

      // langsung ke ContactPage
      initialRoute: AppRoutes.footballPage,
      getPages: AppPages.pages,
    );
  }
}
