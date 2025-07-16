import 'package:flutter/material.dart';
class hhh extends StatefulWidget {
  const hhh({super.key});

  @override
  State<hhh> createState() => _hhhState();
}

class _hhhState extends State<hhh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            color: Colors.deepOrange,
            child: Center(

































              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "search",


                  ),

                ),

            ),

            ),
      Column(
        children: [
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(



            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/burger.jpeg"),
                          fit: BoxFit.fill),




                    ),
                  ),

                ),
                Text("Chicken Double Dhamaka",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),




              ],
            ),

          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(



            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/burger.jpeg"),
                          fit: BoxFit.fill),




                    ),
                  ),

                ),
                Text("Chicken Double Dhamaka",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),




              ],
            ),

          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(



            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/burger.jpeg"),
                          fit: BoxFit.fill),




                    ),
                  ),

                ),
                Text("Chicken Double Dhamaka",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),




              ],
            ),

          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(



            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/burger.jpeg"),
                          fit: BoxFit.fill),




                    ),
                  ),

                ),
                Text("Chicken Double Dhamaka",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),




              ],
            ),

          ),
        ],
      ),




        ],
      ),
    );
  }
}
