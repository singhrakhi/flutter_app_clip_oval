import 'package:flutter/material.dart';

class IgnorePointerDemo extends StatefulWidget {
  @override
  _IgnorePointerDemoState createState() => _IgnorePointerDemoState();
}

class _IgnorePointerDemoState extends State<IgnorePointerDemo> {
  int _counter = 0;

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ignore Pointer Demo'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ), //IconButton
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ), //Text
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ), //Text

            Stack(
              children: <Widget>[
                RaisedButton(
                  onPressed: _incrementCounter1,
                  color: Colors.cyan,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ), //Icon
                ), //RaisedButton
                IgnorePointer(
                  ignoring: true,
                  ignoringSemantics: true,
                  child: RaisedButton(
                    onPressed: _incrementCounter1,
                    color: Colors.green,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ), //Icon
                  ), //RaisedButton
                ), //IgnorePointer
              ], //<Widget>[]
              //Raisedutton
            ) //Stack
            //Raisedutton
          ], //<Widget>[]
        ), //Column
      ),
    );
  }
}
