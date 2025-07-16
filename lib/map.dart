import 'package:flutter/material.dart';
class pp extends StatefulWidget {
  const pp({super.key});

  @override
  State<pp> createState() => _ppState();
}

class _ppState extends State<pp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        width: 600,
        decoration: BoxDecoration(
          border: Border.all(),
          image: DecorationImage(image: AssetImage("assets/map.jpg"),
          fit: BoxFit.fill),

        ),
        child: Container(
          height: 0,
          width: 0,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/man.jpg"))

          ),
        ),
      ),

    );
  }
}
