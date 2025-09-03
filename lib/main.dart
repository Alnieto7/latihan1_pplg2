import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/editFootballPlayersController.dart';
import 'package:latihan1_pplg2/component/controllers/mainmenu_controller.dart';
import 'package:latihan1_pplg2/component/pages/editPlayersPage.dart';
import 'package:latihan1_pplg2/routes/routes.dart';


void main() {
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
      home: MainNavigation(),

      // 🔑 daftar semua route
      getPages: [
        GetPage(
          name: AppRoutes.editPlayersPage,
          page: () => EditPlayersPage(),
            binding: BindingsBuilder(() {
  
  }),
        ),
      ],
    );
  }
}

class MainNavigation extends StatelessWidget {
  MainNavigation({super.key});

  final MainmenuController controller = Get.put(MainmenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
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
