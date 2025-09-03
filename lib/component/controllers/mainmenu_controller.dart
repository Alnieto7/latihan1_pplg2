import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/fragments/calculatorPage.dart';
import 'package:latihan1_pplg2/fragments/footballPlayer.dart';
import 'package:latihan1_pplg2/fragments/profile_page.dart';


class MainmenuController extends GetxController{

  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    HalamanKalkulator(), 
    FootballPlayerPage(), 
    ProfilePage()
  ];

  void changePage(int index){
    selectedIndex.value = index;
  }

}