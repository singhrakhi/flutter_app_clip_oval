import 'dart:async';
import 'package:flutter/material.dart';

import 'ignore_pointer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;
  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async{


    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyIgnorePointer(),
        ));
  }

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: new Duration(seconds: 2), vsync: this);
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
         Container(
             width:  MediaQuery.of(context).size.width,
             height:  MediaQuery.of(context).size.height,
             alignment: Alignment.bottomCenter,
             child: Container(
               width:  MediaQuery.of(context).size.width/3,
               height:  MediaQuery.of(context).size.height/8,
               child: Image.asset('assets/images/logo.png',
                ),
             )
         ),
       ],
      ),
    );
  }
}
