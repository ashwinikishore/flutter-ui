import 'package:flutter/material.dart';

class Gooo extends StatefulWidget {
  @override
  _GoooState createState() => _GoooState();
}

class _GoooState extends State<Gooo> {
  final TextEditingController _controller = TextEditingController();
  List<int> a = [];
  List<int> b = [];

  void _addToListA() {
    final input = _controller.text;
    if (input.isNotEmpty) {
      final number = int.tryParse(input);
      if (number != null) {
        setState(() {
          a.add(number);
          _controller.clear();
        });
      }
    }
  }

  void _showDialog(String title, List<int> resultList) {
    showDialog(
      context: context,
      builder: (_) =>
          AlertDialog(
            title: Text(title),
            content: Text(resultList.toString()),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
    );
  }

  void _sortAscending() {
    setState(() {
      b = [...a]..sort();
    });
    _showDialog("Ascending Order (List b)", b);
  }

  void _sortDescending() {
    setState(() {
      b = [...a]..sort((x, y) => y.compareTo(x));
    });
    _showDialog("Descending Order (List b)", b);
  }

  void _findMin() {
    if (a.isNotEmpty) {
      int minVal = a.reduce((x, y) => x < y ? x : y);
      setState(() {
        b = [minVal];
      });
      _showDialog("Minimum Value (List b)", b);
    }
  }

  void _findMax() {
    if (a.isNotEmpty) {
      int maxVal = a.reduce((x, y) => x > y ? x : y);
      setState(() {
        b = [maxVal];
      });
      _showDialog("Maximum Value (List b)", b);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Sort Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Enter number for list a"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addToListA,
              child: Text("Add to List a"),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: _sortAscending,
                  child: Text("Ascending"),
                ),
                ElevatedButton(
                  onPressed: _sortDescending,
                  child: Text("Descending"),
                ),
                ElevatedButton(
                  onPressed: _findMin,
                  child: Text("Min"),
                ),
                ElevatedButton(
                  onPressed: _findMax,
                  child: Text("Max"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("List a: $a"),
            Text("List b (result): $b"),
          ],
        ),
      ),
    );
  }
}




