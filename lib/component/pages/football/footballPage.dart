import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:latihan1_pplg2/component/controllers/footballPlayerController.dart';
import 'package:latihan1_pplg2/component/pages/football/footballPlayer.dart';
import 'package:latihan1_pplg2/component/pages/football/football_widescreen.dart';

class Footballpage extends StatelessWidget {
   Footballpage({super.key});

   final controller = Get.find<FootballPlayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: LayoutBuilder(
        builder: (context, Constraints) {
          controller.updateScreenSize(Constraints);
          return Obx(()=> controller.isWidescreen.value ?  FootballPlayerPage(): FootballWidescreenPage());
        },
      ),
    );
  }
}