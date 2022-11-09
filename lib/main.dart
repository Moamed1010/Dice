import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(dice1());
}

class dice extends StatelessWidget {
  var leftimagenum = 1;
  var rightimagenum = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice App'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      leftimagenum++;
                      print('i am the left bottom $leftimagenum');
                    },
                    child: Image.asset('images/dice$leftimagenum.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      rightimagenum++;
                      print('i am the right buttom $rightimagenum');
                    },
                    child: Image.asset('images/dice$rightimagenum.png'),
                  ),
                ),
              ),
              // Image.asset('images/dice2.png'),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class dice1 extends StatefulWidget {
  @override
  State<dice1> createState() => _dice1State();
}

class _dice1State extends State<dice1> {
  var leftimagenum = 1;
  var rightimagenum = 2;
  generaterondomnum(int diriction) {
    if (diriction == 1) {
      setState(() {
        leftimagenum = Random().nextInt(5) + 1;
      });
    } else {
      setState(() {
        rightimagenum = Random().nextInt(5) + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice App'),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      generaterondomnum(1);
                    },
                    child: Image.asset('images/dice$leftimagenum.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      generaterondomnum(2);
                    },
                    child: Image.asset('images/dice$rightimagenum.png'),
                  ),
                ),
              ),
              // Image.asset('images/dice2.png'),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
