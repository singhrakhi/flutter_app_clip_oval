import 'package:flutter/material.dart';
import 'package:flutter_app_clip_oval/ignore_pointer.dart';
import 'package:flutter_app_clip_oval/ignore_pointer_demo.dart';
import 'package:flutter_app_clip_oval/splash.dart';

import 'clip_oval_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is
  //the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipOval',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
