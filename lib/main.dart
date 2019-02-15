import 'package:flutter/material.dart';
import 'package:cia/ui/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CIA',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );//hi............. vamsi
  }
}