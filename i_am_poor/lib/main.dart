import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Image(
            image: AssetImage("images/coal.png"),
          ),
        ),
        backgroundColor: Color(0xff7eca9c),
        navigationBar: CupertinoNavigationBar(
          middle: Text("I Am Poor"),
          backgroundColor: Color(0xffccffbd),
        ),
      ),
    ),
  );
}
