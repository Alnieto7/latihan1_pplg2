import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/buttonPlayer.dart';
import 'package:latihan1_pplg2/component/textfieldPlayer.dart';
import '../controllers/editFootballPlayersController.dart';

class EditPlayersPage extends StatelessWidget {
final EditFootballPlayersController controller = Get.put(EditFootballPlayersController());


  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = controller.player.name;
    positionController.text = controller.player.position;
    numberController.text = controller.player.number.toString();

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           TextFieldPlayer(
              controller: nameController,
              label: "Nama Pemain",
            ),
            SizedBox(height: 10),
           TextFieldPlayer(
              controller: positionController,
              label: "Posisi",
            ),
            SizedBox(height: 10),
           TextFieldPlayer(
              controller: numberController,
              label: "Nomor Punggung",
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
           ButtonPlayer(
              text: "Save",
              onPressed: () {
                controller.saveChanges(
                  nameController.text,
                  positionController.text,
                  int.parse(numberController.text),
                );
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
