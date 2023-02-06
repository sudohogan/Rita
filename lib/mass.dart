import 'package:flutter/material.dart';

class mass extends StatefulWidget {
  const mass({Key? key}) : super(key: key);

  @override
  State<mass> createState() => _massState();
}

class _massState extends State<mass> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mass'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: (() {
                setState(() {
                  print(answer);
                });
              }),
              child: Text(
                'data',
                style: TextStyle(
                    backgroundColor: Colors.blueAccent, fontSize: 20.0),
              ),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text(
              answer,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
