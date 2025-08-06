import 'package:flutter/material.dart';
import 'component/custom_textfield.dart';
import 'component/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dateController = TextEditingController();

  void _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2005),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        dateController.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  void _register() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("✅ Data berhasil diisi")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              label: "Nama",
              controller: nameController,
              myTextColor: Colors.blue,
            ),
            CustomTextField(
              label: "Email",
              controller: emailController,
              myTextColor: Colors.blue,
            ),
            CustomTextField(
              label: "Password",
              controller: passwordController,
              myTextColor: Colors.blue,
              isPassword: true,
            ),
            CustomTextField(
              label: "Tanggal Lahir",
              controller: dateController,
              myTextColor: Colors.blue,
              readOnly: true,
              onTap: _pickDate,
            ),
            CustomButton(
              text: "Register",
              onPressed: _register,
            ),
          ],
        ),
      ),
    );
  }
}
