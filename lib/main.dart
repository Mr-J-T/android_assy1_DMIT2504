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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [buildColumnOne(), buildColumnTwo(), buildColumnThree()],
      );
  Widget buildColumnThree() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 200, 0, 200),
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
          Expanded(
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Con 6',
                    style: TextStyle(fontSize: 30),
                  ),
                )),
          ),
        ],
      );

  Widget buildColumnTwo() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
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
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  height: 100,
                  width: 100,
                  //padding: const EdgeInsets.all(10.0),
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Container 4',
                      textAlign: TextAlign.end,
                    ),
                  ),
                  alignment: AlignmentDirectional.centerEnd)),
        ],
      );

  Widget buildColumnOne() => Column(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Container 1',
              textAlign: TextAlign.center,
            ),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3.0),
              color: Colors.yellow[700],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Transform.rotate(
                angle: pi / 4,
                child: Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Text(
                    'container 2',
                  ),
                  alignment: Alignment.center,
                ),
              )),
        ],
      );
}
