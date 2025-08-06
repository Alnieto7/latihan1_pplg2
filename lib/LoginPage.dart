import 'package:flutter/material.dart';
import 'registerpage.dart';
import 'component/custom_textfield.dart';
import 'component/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void _login() {
    final username = usernameController.text;
    final password = passwordController.text;

    if (username == 'admin' && password == 'admin') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('✅ Berhasil login')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Gagal login')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to our application",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 4, 212, 248),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Container(
                width: 90,
                height: 90,
                child: Image.asset('images/logoSMK.png'),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Please fill username and password below",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            CustomTextField(
              label: "Username",
              myTextColor: Colors.deepOrangeAccent,
              controller: usernameController,
            ),
            CustomTextField(
              label: "Password",
              myTextColor: Colors.deepOrangeAccent,
              controller: passwordController,
              isPassword: true,
            ),
            CustomButton(
              text: "Login",
              onPressed: _login,
            ),
            CustomButton(
              text: "Register",
              isOutlined: true,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
