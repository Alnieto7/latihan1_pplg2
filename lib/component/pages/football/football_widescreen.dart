import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/footballPlayerController.dart';

class FootballWidescreenPage extends StatelessWidget {
  FootballWidescreenPage({super.key});

  final controller = Get.find<FootballPlayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Football Players (Widescreen)")),
      body: Obx(() {
        return controller.isWidescreen.value
            ? _buildGridView()
            : _buildListView();
      }),
    );
  }

  // 🟦 Tampilan Grid untuk layar lebar
  Widget _buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemCount: controller.players.length,
      itemBuilder: (context, index) {
        final player = controller.players[index];
        return GestureDetector(
          onTap: () => controller.goToEditPage(index),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    player.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  player.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  player.position,
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(
                  "#${player.number}",
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // 🟩 Tampilan List untuk layar kecil
  Widget _buildListView() {
    return ListView.builder(
      itemCount: controller.players.length,
      itemBuilder: (context, index) {
        final player = controller.players[index];
        return ListTile(
          leading: Image.asset(player.image, width: 50),
          title: Text(player.name),
          subtitle: Text("${player.position} - #${player.number}"),
          onTap: () => controller.goToEditPage(index),
        );
      },
    );
  }
}
