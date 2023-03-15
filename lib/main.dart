import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rita/widgets/slideshow.dart';

import 'package:rita/widgets/widgets.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        title: 'Navigation Basics',
        home: Home(),
      ),
    ),
  );
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
      body: Column(
        children: const [
          SizedBox(
            height: 40.0,
          ),
          Confirm(),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
