import 'package:flutter/material.dart';
import 'package:see/hello.dart';

class vv extends StatelessWidget {
  const vv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(20),
    ),
    ),

        leading: Icon(Icons.arrow_back_ios),
        title: Text("menu"),
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                 Card(
                   elevation: 9,
                   child: ListTile(
                     leading:Icon(Icons.arrow_forward) ,
                     title: Text("attendance report"),
                     trailing: Icon(Icons.arrow_forward),
                   ),
                 ),
                  Card(
                    elevation: 9,
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward),
                      title: Text(" payment report"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ),
                  Card(
                    elevation: 9,
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward),
                      title: Text(" all students project utl"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ),
                  Card(
                    elevation: 9,
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward),
                      title: Text(" leave request"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),







    );
  }
}