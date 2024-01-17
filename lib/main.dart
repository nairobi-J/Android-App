import 'package:flutter/material.dart';
import 'package:prac/pages/welcome_page.dart';

import 'navpages/main_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {   //my app is a widget
  const MyApp({super.key});
  @override

  Widget build(BuildContext context){

    return  MaterialApp(
      title : 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : MainPage()
    );
  }
}