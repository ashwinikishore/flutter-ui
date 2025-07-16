import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}
class _listState extends State<list> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _numberlist = [];

  void _addNumber() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _numberlist.add(_controller.text);
        _controller.clear();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number viewer")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: " Enter  a number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed : _addNumber,
                child: Text(" Add Number"),
            ),
            SizedBox(height: 20),
             Expanded(child: ListView.builder(
               itemCount: _numberlist.length,
               itemBuilder: (context,index){
                 return  ListTile(
                 title: Text(" you entered:${_numberlist[index]}"),
                 );
               },
             ),
             ),
            SizedBox(height: 10),
            ElevatedButton(onPressed : _addNumber,
              child: Column(
                children: [
                  Text(" min"),
                ],
              ),
            ),
        Expanded(child: ListView.builder(
          itemCount: _numberlist.length,
          itemBuilder: (context,index){
            return  ListTile(
              title: Text("List${_numberlist[index]}"),
            );
          },
        ),
        ),

          ],
        ),
      ),
    );
  }
}


