import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: DiceApp(),
  ));
}

class DiceApp extends StatefulWidget {

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int left_image = 1;
  int right_image = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Dice App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19
        ),),
        centerTitle: true,
      ),

      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    left_image = Random().nextInt(6)+1;
                  });
                },
                child: Image(
                  image: AssetImage('assets/$left_image.png'),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    right_image = Random().nextInt(6)+1;
                  });
                  print(right_image);
                },
                child: Image(
                  image: AssetImage('assets/$right_image.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

