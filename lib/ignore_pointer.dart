import 'package:flutter/material.dart';

class MyIgnorePointer extends StatefulWidget {
  @override
  _MyIgnorePointerState createState() => _MyIgnorePointerState();
}

class _MyIgnorePointerState extends State<MyIgnorePointer> {
  bool _isIgnore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ignore Pointer Demo'),
        ),
      body: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IgnorePointer(
                  ignoring: _isIgnore,
                  child: Column(
                    children: <Widget>[

                      Container(
                        width:  MediaQuery.of(context).size.width,
                        height: 55,
                        child: RaisedButton(
                          child: Text('Click me',style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          onPressed: (){
                            // Scaffold.of(context).showSnackBar(
                            //     SnackBar(content: Text('Clicked'))
                            // );
                            showAlertDialog(context);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(8)),
                          ),
                          color: Colors.blue,

                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Enable Ignore Pointer?'),
                    Switch(
                        value: _isIgnore,
                        onChanged: (bool value) {
                          setState(() {
                            _isIgnore = value;
                          });
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );


  }


  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Message"),
      content: Text("Button is pressed."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }}
