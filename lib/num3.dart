import 'package:flutter/material.dart';
class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {

  TextEditingController   controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          TextFormField(controller: controller,),
          
          Row(
            children: [

              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  controller.text = "7";
                },
                    child: Text("7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  controller.text = "8";
                },
                    child: Text("8",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  controller.text = "9";
                },
                    child: Text("9",style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold),),
    ),

      ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){
                  controller.text="×";
                }, child: Text("×"
                    ,style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),


              
    
                      

                    ],
                  ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      controller.text= "4";
                    }, child: Text("4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      controller.text="5";
                    }, child: Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      controller.text="6";
                    }, child: Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87))),
                  ),
Padding(
  padding: const EdgeInsets.all(20),
  child: ElevatedButton(onPressed: (){
    controller.text="+";
  }, child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red))),
)
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      controller.text ="1";
                    }, child:Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87)) ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      controller.text="2";
                    }, child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){
                      controller.text="3";
                    }, child: Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(onPressed: (){
                      controller.text="-";
                    }, child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red))),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                controller.text="e";
              }, child: Text("e",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87))),
              ElevatedButton(onPressed: (){
                controller.text="0";
              }, child: Text("0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87)))
            ],

          )
                ],
      ),






            
          
        
      

    );

  }
}

