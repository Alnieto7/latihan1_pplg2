import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/contact_controller.dart';
import 'package:latihan1_pplg2/component/custom_button.dart';
import 'package:latihan1_pplg2/component/custom_textfield.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final controller = Get.find<ContactController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: "Masukkan nama",
                    controller: controller.nameController,
                    myTextColor: Colors.teal,
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 100,
                  child: CustomButton(
                    text: "Tambah",
                    onPressed: controller.addName,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            /// List Contact
            Expanded(
              child: Obx(() {
                if (controller.names.isEmpty) {
                  return const Center(child: Text("Belum ada kontak"));
                }
                return ListView.builder(
                  itemCount: controller.names.length,
                  itemBuilder: (context, index) {
                    final contact = controller.names[index]; 
                    return Dismissible(
                      key: ValueKey(contact['id']),
                      direction: DismissDirection.endToStart,
                      onDismissed:
                          (_) => controller.deleteNameWithConfirm(
                            contact['id'],
                            contact['name'],
                          ),
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      child: Card(
                        child: ListTile(
                          title: Text(contact['name']),
                          onTap:
                              () => controller.updateNameWithDialog(
                                contact['id'],
                                contact['name'],
                              ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
