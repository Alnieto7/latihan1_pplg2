import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/calculatorController.dart';

class HalamanKalkulator extends StatelessWidget {
  final PengontrolKalkulator pengontrol = Get.put(PengontrolKalkulator());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FA),
      appBar: AppBar(
        title: Text('Kalkulator GetX'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calculate, size: 48, color: Colors.teal),
                SizedBox(height: 16),
                TextField(
                  controller: pengontrol.angka1Controller,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Angka Pertama',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    prefixIcon: Icon(Icons.looks_one),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: pengontrol.angka2Controller,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Angka Kedua',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    prefixIcon: Icon(Icons.looks_two),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCalcButton('+', Colors.teal, pengontrol.tambah),
                    _buildCalcButton('-', Colors.orange, pengontrol.kurang),
                    _buildCalcButton('×', Colors.blue, pengontrol.kali),
                    _buildCalcButton('÷', Colors.purple, pengontrol.bagi),
                  ],
                ),
                SizedBox(height: 24),
                Obx(() => Text(
                      'Hasil: ${pengontrol.hasil.value}',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.teal[700]),
                    )),
                SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: pengontrol.clear,
                  icon: Icon(Icons.refresh),
                  label: Text('Reset'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCalcButton(String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(20),
        elevation: 4,
      ),
      child: Text(label, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}