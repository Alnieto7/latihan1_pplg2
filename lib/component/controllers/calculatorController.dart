import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PengontrolKalkulator extends GetxController {
  TextEditingController angka1Controller = TextEditingController();
  TextEditingController angka2Controller = TextEditingController();

  var hasil = 0.0.obs;

  void tambah() {
    double a1 = double.tryParse(angka1Controller.text) ?? 0;
    double a2 = double.tryParse(angka2Controller.text) ?? 0;
    hasil.value = a1 + a2;
  }

  void kurang() {
    double a1 = double.tryParse(angka1Controller.text) ?? 0;
    double a2 = double.tryParse(angka2Controller.text) ?? 0;
    hasil.value = a1 - a2;
  }

  void kali() {
    double a1 = double.tryParse(angka1Controller.text) ?? 0;
    double a2 = double.tryParse(angka2Controller.text) ?? 0;
    hasil.value = a1 * a2;
  }

  void bagi() {
    double a1 = double.tryParse(angka1Controller.text) ?? 0;
    double a2 = double.tryParse(angka2Controller.text) ?? 1;
    hasil.value = a2 != 0 ? a1 / a2 : 0;
  }

  void clear() {
    angka1Controller.clear();
    angka2Controller.clear();
    hasil.value = 0.0;
  }
}
