import 'package:flutter/material.dart';
import 'package:flutter_app_clip_oval/main.dart';

class ClipOvalDemo extends StatefulWidget {
  @override
  _ClipOvalDemoState createState() => _ClipOvalDemoState();
}

class _ClipOvalDemoState extends State<ClipOvalDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Oval Demo'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ClipOval(
          child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
          fit: BoxFit.fill,),
          clipper: MyClip(),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 50, 50);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}