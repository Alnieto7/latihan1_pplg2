import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/database/dbHelper.dart';
import 'package:latihan1_pplg2/component/custom_textfield.dart';
import 'package:latihan1_pplg2/component/custom_button.dart';

class ContactController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final names = <Map<String, dynamic>>[].obs; // id + name
  final _dbHelper = DBHelper();

  @override
  void onInit() {
    super.onInit();
    fetchNames();
  }

  Future<void> fetchNames() async {
    final data = await _dbHelper.getNames();
    names.value = data;
  }

  Future<void> addName() async {
    final text = nameController.text.trim();
    if (text.isEmpty) {
      Get.snackbar("Gagal", "Nama tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    await _dbHelper.insertName(text);
    nameController.clear();
    fetchNames();
    Get.snackbar("Berhasil", "Kontak berhasil ditambahkan",
        snackPosition: SnackPosition.BOTTOM);
  }

  Future<void> deleteNameWithConfirm(int id, String name) async {
    final confirm = await Get.dialog<bool>(
      AlertDialog(
        title: const Text("Hapus Kontak"),
        content: Text("Apakah kamu yakin ingin menghapus \"$name\"?"),
        actions: [
          TextButton(onPressed: () => Get.back(result: false), child: const Text("Batal")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Get.back(result: true),
            child: const Text("Hapus"),
          ),
        ],
      ),
    );
    if (confirm == true) {
      await _dbHelper.deleteName(id);
      fetchNames();
      Get.snackbar("Dihapus", "Kontak \"$name\" berhasil dihapus",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> updateNameWithDialog(int id, String oldName) async {
    final editController = TextEditingController(text: oldName);

    await Get.dialog(
      AlertDialog(
        title: const Text("Edit Nama"),
        content: CustomTextField(
          label: "Nama baru",
          controller: editController,
          myTextColor: Colors.teal,
        ),
        actions: [
          CustomButton(
            text: "Batal",
            isOutlined: true,
            onPressed: () => Get.back(),
          ),
          CustomButton(
            text: "Simpan",
            onPressed: () async {
              final newName = editController.text.trim();
              if (newName.isEmpty) {
                Get.snackbar("Update Gagal", "Nama tidak boleh kosong",
                    snackPosition: SnackPosition.BOTTOM);
                return;
              }
              if (newName == oldName) {
                Get.snackbar("Update Gagal", "Nama tidak boleh sama dengan sebelumnya",
                    snackPosition: SnackPosition.BOTTOM);
                return;
              }
              await _dbHelper.updateName(id, newName);
              fetchNames();
              Get.back();
              Get.snackbar("Berhasil", "Nama berhasil diperbarui",
                  snackPosition: SnackPosition.BOTTOM);
            },
          ),
        ],
      ),
    );
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}
