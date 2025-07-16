import 'package:flutter/material.dart';
import 'package:see/Amazon.dart';
import 'package:see/bee.dart';
import 'package:see/gg.dart';
import 'package:see/hello.dart';
import 'package:see/home%20page.dart';
import 'package:see/instagram%20profile%20page.dart';

import 'package:see/spotify.dart';


class jeni extends StatefulWidget {
  const   jeni({super.key});

  @override
  State<jeni> createState() => _jeniState();
}

class _jeniState extends State<jeni> {
  int _index =0;
  final page = [
    ok(),
    joo(),
    kee(),
    instagram(),


  ];
  void tap (index){
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: page[_index],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.business),
    label: 'Business',
    backgroundColor: Colors.green,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.school),
    label: 'School',
    backgroundColor: Colors.purple,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
    backgroundColor: Colors.pink,
    ),
    ],
    currentIndex: _index,
    selectedItemColor: Colors.amber[800],
    onTap: tap,
    ),
    );
  }
}

