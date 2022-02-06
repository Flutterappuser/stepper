

import 'package:flutter/material.dart';

class Hompage extends StatefulWidget {


  @override
  _HompageState createState() => _HompageState();
}

class _HompageState extends State<Hompage> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar:  AppBar(title: const Text("Test")),
        body: Center(
          child: Container(
            width: 300,
            height: 150,
            color: Colors.red,
            padding: const EdgeInsets.all(10.0),
            child: const FittedBox(
              child:  Text('FLUTTER APP',
              style: TextStyle(fontSize: 100,
              color: Colors.white,
              fontWeight: FontWeight.bold,),),
            ),
          ),
        ),



    );
  }
}
