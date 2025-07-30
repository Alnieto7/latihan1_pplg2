import 'package:flutter/material.dart';
import 'registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  void _login() {
    String username = usernameController.text;
    String password = passwordController.text;

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
      appBar: AppBar(title: Text("login page")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "welcome to our aplication",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 4, 212, 248),
            ),
          ),
          Center(
            child: Container(
              width: 90,
              height: 90,
              child: Image.asset('images/logoSMK.png'),
            ),
          ),
          Text(
            "please fill username and password below",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: TextField(
              controller: usernameController, 
              decoration: InputDecoration(
                labelText: "username",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          TextField(
            controller: passwordController, 
            obscureText: true,
            decoration: InputDecoration(
              labelText: "password",
              border: OutlineInputBorder(),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: OutlinedButton(
              onPressed: _login, 
              child: Text('Login'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('Register'),
            ),
          )
        ],
      ),
    );
  }
}
