import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latihan1_pplg2/component/controllers/example_controller.dart';
import 'package:latihan1_pplg2/component/pages/example_feauture/example_mobile.dart';
import 'package:latihan1_pplg2/component/pages/example_feauture/example_wideScreen.dart';

class ExampleTransformPage extends StatelessWidget {
  ExampleTransformPage({super.key});

  final controller = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, Constraints) {
          controller.updateLayout(Constraints);
          return Obx(()=> controller.isMobile.value ? ExampleMobile() : ExampleWidescreen());
        },
      ),
    );
  }
}
