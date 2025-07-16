import 'package:flutter/material.dart';
class lll extends StatefulWidget {
  const lll({super.key});

  @override
  State<lll> createState() => _lllState();
}

class _lllState extends State<lll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 170,
            width: 560,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/burger.jpeg"))

            ),



          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 190,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
              ),
                borderRadius: BorderRadius.circular(50),

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
            
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "QUANTITY : 3",

            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "AMOUNT : 599/-",


            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "DELIVERY CHARGES  : FREE",


            ),
          ),
          
Padding(
  padding: const EdgeInsets.all(20),
  child: Container(
    height: 40,
    width: 250,
    color: Colors.deepOrange,
    child: Center(child: Text("ADD TO CART",style: TextStyle(fontWeight: FontWeight.bold),)),
  ),
),
          
          
        ],

      ),
      








    );
  }
}
