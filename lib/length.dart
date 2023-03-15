import 'package:flutter/material.dart';
import 'package:rita/main.dart';
import 'package:rita/works.dart';

class Lengths extends StatefulWidget {
  const Lengths({Key? key}) : super(key: key);

  @override
  State<Lengths> createState() => _LengthsState();
}

class _LengthsState extends State<Lengths> {
  Future<void> solve() async {
    Possible instance = Possible(foe.text, doe.text, hoe.text, omo);
    instance.getRight();
  }

  TextEditingController hoe = TextEditingController();
  TextEditingController foe = TextEditingController();
  TextEditingController doe = TextEditingController();
  dynamic omo;
  var poo = '';
  // var to keep track of user Value input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length'),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              'INPUT:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: hoe,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  filled: true,
                  hoverColor: Colors.amber,
                  border: const OutlineInputBorder(),
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
            TextField(
              keyboardType: TextInputType.text,
              controller: foe,
              decoration: InputDecoration(
                  filled: true,
                  hoverColor: Colors.amber,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.02),
                      borderSide: BorderSide.none),
                  hintText: 'Input unit in m, km or ft',
                  suffixIcon: IconButton(
                      onPressed: () {
                        foe.clear();
                      },
                      icon: const Icon(Icons.clear))),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'OUTPUT:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: doe,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Input unit in m, km or inch',
                  suffixIcon: IconButton(
                      onPressed: () {
                        doe.clear();
                      },
                      icon: const Icon(Icons.clear))),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Text(
                  poo,
                  style: const TextStyle(
                      fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 60.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      solve();
                      poo = '5000m';
                    });
                  },
                  icon: const Icon(Icons.compare_arrows_rounded),
                  label: const Text('Convert'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[800])),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
