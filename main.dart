import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rita/length.dart';
import 'package:rita/time.dart';
import 'package:rita/mass.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rita'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const times()),
              );
            },
            icon: Icon(Icons.lock_clock),
            label: const Text('Time'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const mass(),
                ),
              );
            },
            icon: Icon(Icons.lock_clock),
            label: const Text(
              'Mass',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const lengths(),
                ),
              );
            },
            icon: Icon(Icons.height),
            label: const Text('Length'),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.grey[800]),
            ),
          )
        ],
      ),
    );
  }
}
