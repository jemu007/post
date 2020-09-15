import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IPL 11",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("IPL-11"),
        ),
        drawer: Drawer(),
        body: HomePage(),
      ),
    );
  }
}
