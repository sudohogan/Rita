import 'package:flutter/material.dart';
import 'package:rita/works.dart';

class lengths extends StatefulWidget {
  const lengths({Key? key}) : super(key: key);

  @override
  State<lengths> createState() => _lengthsState();
}

class _lengthsState extends State<lengths> {
  void solve() {
    Possible instance = Possible(foe.text, doe.text, hoe.text);
    instance.getRight();
  }

  //optional state build
  TextEditingController hoe = TextEditingController();
  TextEditingController foe = TextEditingController();
  TextEditingController doe = TextEditingController();
  dynamic omo;

  // var to keep track of user Value input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: hoe,
            decoration: InputDecoration(
                filled: true,
                hoverColor: Colors.amber,
                border: OutlineInputBorder(),
                hintText: 'Input Number Value',
                suffixIcon: IconButton(
                    onPressed: () {
                      hoe.clear();
                    },
                    icon: const Icon(Icons.clear))),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: TextField(
              keyboardType: TextInputType.text,
              controller: foe,
              decoration: InputDecoration(
                  filled: true,
                  hoverColor: Colors.amber,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.02),
                      borderSide: BorderSide.none),
                  hintText: 'Input unit in m, km or foe',
                  suffixIcon: IconButton(
                      onPressed: () {
                        foe.clear();
                      },
                      icon: const Icon(Icons.clear))),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            child: const Text('OUTPUT:'),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            keyboardType: TextInputType.text,
            controller: doe,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Input unit in m, km or doe',
                suffixIcon: IconButton(
                    onPressed: () {
                      doe.clear();
                    },
                    icon: const Icon(Icons.clear))),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                solve();
              });
            },
            icon: const Icon(Icons.compare_arrows_rounded),
            label: const Text('Convert'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[800])),
          ),
          Container(
            child: const Text(
              '',
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 11.0),
            ),
          )
        ],
      ),
    );
  }
}
