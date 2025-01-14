import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Master Layout Widgets")),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Aligned Center Text',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  //Row
                  Expanded(
                    child: Container(color: Colors.blue, height: 50),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(color: Colors.red, height: 50),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //Stack
              Stack(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Icon(Icons.star, color: Colors.yellow, size: 30),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
