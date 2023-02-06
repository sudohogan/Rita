import 'package:flutter/material.dart';

void main() {
  print('\n');
}

class times extends StatefulWidget {
  const times({Key? key}) : super(key: key);

  @override
  State<times> createState() => _timesState();
}

class _timesState extends State<times> {
  //List for dropdown button
  List<String> units = [
    'Second/s(sec)',
    'Minute/s(min)',
    'Hour/s(hrs)',
    'Day/s',
  ];
  String? selectedUnit = 'Second/s(sec)';
  // keep track of user input
  final _section_id = TextEditingController();

  // user input value
  int? cut;
  int? output;
  List<String> fruit = ['apple', 'pear', 'orange', 'mango'];
  //expand this function to take in integer value and corresponding time unit
  checkMate() {
    cut = int.tryParse(_section_id.text);
    output = cut! + 543;
  }

  soak(int b) {
    output = cut! + b;
  }

  @override
  void initState() {
    // TODO: implement initState
    //for (var nice in fruit) print("this is $nice");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Time'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 65.9,
            ),
            Container(
                child: Center(
              child: Text(
                output.toString(),
                style: const TextStyle(fontSize: 45.0),
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Center(
                      child: DropdownButton<String>(
                    value: selectedUnit,
                    items: units
                        .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(fontSize: 25.0),
                            )))
                        .toList(),
                    iconSize: 40.0,
                    onChanged: (e) => setState(() {
                      selectedUnit = e;
                      soak(2);
                    }),
                    iconEnabledColor: Colors.grey[900],
                  )),
                ),
              ],
            ),
            Center(
              child: TextField(
                controller: _section_id,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Key in an Input',
                    suffixIcon: IconButton(
                      onPressed: () {
                        _section_id.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )),
                keyboardType: TextInputType.number,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  checkMate();
                });
              },
              color: Colors.grey[900],
              child: const Text(
                'Convert',
                style: TextStyle(color: Colors.amber),
              ),
            )
          ],
        ),
      ),
    );
  }
}
