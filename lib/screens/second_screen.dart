import 'package:flutter/material.dart';
import '../components.dart/bottom_navigation_bar.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  State<SecondScreen> createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("第二頁"),
      ),
      bottomNavigationBar: const BottomBar("second"),
      body: Center(
        child: TextButton(
          child: const Text("首頁"),
          onPressed: () {
            // Navigator.pushNamed(context, "/home");
            Navigator.pushReplacementNamed(context, "/home");
          },
        ),
      ),
    );
  }
}
