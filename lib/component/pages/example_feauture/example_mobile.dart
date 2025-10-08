import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExampleMobile extends StatelessWidget {
  const ExampleMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ini mobile"),),
      body: Center(
        child: Text("ini mobile"),
      ),
    );
  }
}