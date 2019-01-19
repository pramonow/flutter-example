

import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void goBack() {
      Navigator.pop(context);
    }

    void makeToast(BuildContext context) {
      Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text("Your toast here"),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Builder(
        builder:(context) => Center (
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: goBack,
            child: Text('Go back!'),
          ),
          RaisedButton(
            onPressed: () {makeToast(context);},
            child: Text('Make a toast!'),
          ),
        ],
      ),
      ),
    )
    );
  }
}