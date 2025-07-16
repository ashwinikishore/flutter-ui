 import 'package:flutter/material.dart';
import 'package:see/Amazon.dart';
import 'package:see/bee.dart';
import 'package:see/instagram%20profile%20page.dart';
import 'package:see/spotify.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
         backgroundColor: Colors.black45,
         leading: Icon(Icons.menu),
         title: Column(
           children: [
             Center(child: Text(" Drawer Dome"),),
           ],
         )
       ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          TextFormField(

          ),

            ElevatedButton(onPressed: (){
              
            }, child: Text(" Login"))

        ],

      ),
    );
  }
}
