import 'package:flutter/material.dart';

import '../components.dart/bottom_navigation_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首頁"),
      ),
      bottomNavigationBar: const BottomBar("home"),
      body: Center(
          child: TextButton(
        child: const Text('第二頁'),
        onPressed: () {
          // Navigator.pushNamed(context, "/second");
          Navigator.pushReplacementNamed(context, "/second");
        },
      )),
    );
  }
}
