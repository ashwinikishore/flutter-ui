import 'package:flutter/material.dart';
class www extends StatefulWidget {
  const www({super.key});

  @override
  State<www> createState() => _wwwState();
}

class _wwwState extends State<www> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: 600,
            color: Colors.deepPurpleAccent ,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/study.jpg"))
              ),
            ),
          ),

          Text("Learning is everything",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Center(child: Padding(
            padding: const EdgeInsets.all(15),
            child:

            Text("Learning with pleasure with the dear programer whenever you want",
                style: TextStyle(fontSize: 15)),
          )),
          ElevatedButton(onPressed: (

              ){

          }, child: Text("Go start"))


        ],


      ),

    );
  }
}
