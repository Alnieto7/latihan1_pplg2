import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/bottom_nav_controller.dart';
import 'package:latihan1_pplg2/component/pages/calculatorPage.dart';
import 'package:latihan1_pplg2/component/pages/footballPlayer.dart';
import 'package:latihan1_pplg2/component/pages/profile_page.dart';
import 'package:latihan1_pplg2/routes/pages.dart';   // ✅ import AppPages
import 'package:latihan1_pplg2/routes/routes.dart'; // ✅ import AppRoutes

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
      home: MainNavigation(),     // ⬅️ tetap pakai bottom nav
      getPages: AppPages.pages,   // ✅ daftar semua route ada di AppPages
    );
  }
}

class MainNavigation extends StatelessWidget {
  MainNavigation({super.key});

  final List<Widget> pages = [
    HalamanKalkulator(),
    FootballPlayerPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: "Players",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
