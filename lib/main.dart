import 'dart:math';

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
        children: [buildColumnOne()],
      );

  Widget buildColumnOne() => Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
            padding: const EdgeInsets.all(10.0),
            child: Text('container 1'),
          ),
          Container(
              child: Transform.rotate(
            angle: pi / 4,
            child: Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white,
                ),
                child: Text('container 2')),
          )),
        ],
      );
}
