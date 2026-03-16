import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Quiz')),
      body: Center(child: Container(child: Text('Flutter Quiz'))),
    );
  }
}
