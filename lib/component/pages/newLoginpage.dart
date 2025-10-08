import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_pplg2/component/controllers/login_controller.dart';
import 'package:latihan1_pplg2/component/custom_button.dart';
import 'package:latihan1_pplg2/component/custom_textfield.dart';
import 'package:latihan1_pplg2/routes/routes.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  final LoginController loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CustomTextField(
                label: "Username",
                controller: loginController.usernameController, 
                myTextColor: Colors.black,
              ),
              CustomTextField(
                label: "Password",
                controller: loginController.passwordController,
                myTextColor: Colors.black,
              ),
              CustomButton(
                text: "Login",
                onPressed: () => Get.toNamed(AppRoutes.calculatorPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
