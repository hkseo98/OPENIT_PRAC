import 'package:flutter/material.dart';
import 'package:openitprac/pages/loading_screen.dart';
import 'package:openitprac/pages/start_page.dart';
import 'package:get/get.dart';

import 'dart:async';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  Widget now_page = LoadingScreen();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    hideScreen();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OpenIt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: widget.now_page,
    );
  }

  Future<void> hideScreen() async {
    Future.delayed(Duration(milliseconds: 0), () {
      setState(() {
        widget.now_page = StartPage();
      });
    });
  }
}
