import 'package:flutter/material.dart';
import 'package:see/list.dart';

class Delet extends StatefulWidget {
  const Delet({super.key});

  @override
  State<Delet> createState() => _DeletState();
}

class _DeletState extends State<Delet> {

  List<int> numberlist = [];
  TextEditingController numberController = TextEditingController();


  void addNumber () {
    if (numberController.text.isNotEmpty){
      setState(() {
        numberlist.add(int.parse(numberController.text));
        numberController.clear();
      });
    }
}


 void editNumber(int index){
    TextEditingController editingController = TextEditingController(text: numberlist[index].toString());

    showDialog(
        context: context,
        builder: (_) => AlertDialog(
      title: Text(" Edit Number"),
      content: TextField(
        controller: editingController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: "New Number"),
      ),
      actions: [
        TextButton(
            onPressed: (){
              setState(() {
                numberlist[index]= int.parse(editingController.text);
              });
              Navigator.pop(context);
            },
            child: Text(" save")
        ),
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(" cancel")
        ),
      ],
        ),
    );
 }
    void deletNumber(int index){
    setState(() {
      numberlist.removeAt(index);
    });
    }
    //


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text(" Edit & Delet list"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: " Enter number"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: addNumber,
                child: Text(" Add number"),
            ),

            SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                  itemCount: numberlist.length,
                    itemBuilder: (context,index) {
                      int value = numberlist [index];
                      return Container(
                        color: Colors.cyanAccent,
                        child: ListTile(
                        title: Text(
                          "  $value",
                          style: TextStyle(

                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.blue),
                              onPressed: () => editNumber(index),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () => deletNumber(index),
                            ),
                          ],
                        ),
                        ),
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
