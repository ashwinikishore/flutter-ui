
import 'package:flutter/material.dart';


class HP extends StatefulWidget {
  @override
  _HPState createState() => _HPState();
}

class _HPState extends State<HP> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _numberlist = [];


  List<int> a = [];
  List<int> b = [];


  void _addToListA() {
    if (_controller.text.isNotEmpty) {
      final input = _controller.text;
      if (input.isNotEmpty) {
        final number = int.tryParse(input);
        if (number != null) {
          setState(() {
            _numberlist.add(_controller.text);
            a.add(number);
            _controller.clear();
          });
        }
      }
    }
  }


  void _showDialog(String title, List<int> resultList) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
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
      a = [...b]..sort((x, y) => y.compareTo(x));
    });
    _showDialog("Descending Order ", a);
  }

  void _findMin() {
    if (a.isNotEmpty) {
      int minVal = a.reduce((x, y) => x < y ? x : y);
      setState(() {
        b = [minVal];
      });
      _showDialog("Minimum Value ", b);
    }
  }

  void _findMax() {
    if (a.isNotEmpty) {
      int maxVal = a.reduce((x, y) => x > y ? x : y);
      setState(() {
        b = [maxVal];
      });
      _showDialog("Maximum Value", b);
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
            Expanded(child: ListView.builder(
              itemCount: _numberlist.length,
              itemBuilder: (context,index){
                return  Container(
                  color: Colors.cyan,
                  child: ListTile(
                    title: Text("${_numberlist[index]}"),
                  ),

                );
              },
            ),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _sortAscending,
                    child: Text("Ascending"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _sortDescending,
                    child: Text("Descending"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _findMin,
                    child: Text("Min"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _findMax,
                    child: Text("Max"),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}




