import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/routes/routes.dart';
import '../component/controllers/footballPlayerController.dart';

class FootballPlayerPage extends StatelessWidget {
  final FootballPlayerController controller = Get.put(FootballPlayerController());

  FootballPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Football Players")),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            final player = controller.players[index];
            return ListTile(
              leading: Image.asset(player.image, width: 50),
              title: Text(player.name),
              subtitle: Text("${player.position} - #${player.number}"),
              onTap: () {
                // kirim index ke halaman edit
                Get.toNamed(
                  AppRoutes.editPlayersPage,
                  arguments: index,
                );
              },
            );
          },
        );
      }),
    );
  }
}
