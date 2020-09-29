import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assignment one ',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('Assignment One DMIT 2054'),
        ),
        body: Center(child: buildBoxRow()),
      ),
    );
  }

  Widget buildBoxRow() => Row(
        children: [buildColumnOne(), buildColumnTwo(), buildColumnThree()],
      );
  Widget buildColumnThree() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Container 5',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3.0),
              color: Colors.black,
            ),
          ),
          Container(
            // this one needs to go to the bottom of the page possibly use the extend widget do more reading on expand/ extend
            height: 100,
            width: 100,
            padding: EdgeInsets.all(10.0),
            color: Colors.red,
            alignment: Alignment(-1.0, -1.0),
            child: Text(
              'Con 6',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      );
  /////////////////
  Widget buildColumnTwo() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.all(20),
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(10.0),
                color: Colors.yellow,
                child: Text(
                  'Container 3',
                ),
                alignment: AlignmentDirectional.bottomCenter),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.blue,
                  child: Text(
                    'Container 4',
                  ),
                  alignment: AlignmentDirectional.centerEnd)),
        ],
      );
/////////////////////////////
  Widget buildColumnOne() => Column(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Container 5',
              textAlign: TextAlign.center,
            ),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3.0),
              color: Colors.yellow,
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Transform.rotate(
                angle: pi / 4,
                child: Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Text('container 2')),
              )),
        ],
      );
}
