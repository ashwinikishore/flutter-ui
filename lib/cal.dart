import 'package:flutter/material.dart';
class ddd extends StatefulWidget {
  const ddd({super.key});

  @override
  State<ddd> createState() => _dddState();
}

class _dddState extends State<ddd> {
String val1="",val2="",opra="";


bool clk= false;
  TextEditingController ctrl =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Center(child: Text("CALCULATER")),
      ),
      body:Column(
        children: [
          TextFormField(
controller: ctrl,

          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "1";
                    ctrl.text = val2;

                  }
                  else
                  {
                    val1 += "1";
                    ctrl.text = val1;
                  }

                },
                    child:Text("1")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "2";
                    ctrl.text = val2;
                  }
                  else
                  {
                    val1+= "2";
                    ctrl.text = val1;
                  }
                }, child: Text("2")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "3";
                    ctrl.text = val2;
                  }
                  else
                  {
                    val1 = "3";
                    ctrl.text = val1;
                  }
                }, child: Text("3")),
                ElevatedButton(onPressed: (){
                  ctrl.text="";
                  opra='+';
                  clk=true;


                }, child: Text("+")),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "4";
                    ctrl.text = val2;

                  }
                  else
                  {
                    val1 += "4";
                    ctrl.text = val1;
                  }

                },
                    child:Text("4")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "5";
                    ctrl.text = val2;
                  }
                  else
                  {
                    val1 += "5";
                    ctrl.text = val1;
                  }
                }, child: Text("5")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "6";
                    ctrl.text = val2;
                  }
                  else
                  {
                    val1 = "6";
                    ctrl.text = val1;
                  }
                }, child: Text("6")),
                ElevatedButton(onPressed: (){
                  ctrl.text="";
                  opra='-';
                  clk=true;


                }, child: Text("-")),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "7";
                    ctrl.text = val2;

                  }
                  else
                  {
                    val1 = "7";
                    ctrl.text = val1;
                  }

                },
                    child:Text("7")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "8";
                    ctrl.text = val2;
                  }
                  else
                  {
                    val1 = "8";
                    ctrl.text = val1;
                  }
                }, child: Text("8")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "9";
                    ctrl.text = val2;
                  }
                  else
                  {
                    val1 = "8";
                    ctrl.text = val1;
                  }
                }, child: Text("9")),
                ElevatedButton(onPressed: (){
                  ctrl.text="";
                  opra='/';
                  clk=true;


                }, child: Text("(÷)")),
                ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("e")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "0";
                    ctrl.text = val2;

                  }
                  else
                  {
                    val1 = "0";
                    ctrl.text = val1;
                  }

                },
                    child:Text("0")),
                ElevatedButton(onPressed: (){

                  if(opra == "+")
                    {
                      int a = int.parse(val1);
                      int b = int.parse(val2);
                      int res = a + b;

                      ctrl.text = res.toString();
                      clk=false;
                    }
                  if(opra == "-")
                  {
                    int a = int.parse(val1);
                    int b = int.parse(val2);
                    int res = a - b;

                    ctrl.text = res.toString();
                    clk=false;
                  }
                  if(opra == "/")
                  {
                    double a = double.parse(val1);
                    double b = double.parse(val2);
                    double res = a/b;

                    ctrl.text = res.toString();
                    clk=false;
                  }
                  if(opra == "*")
                  {
                    int a = int.parse(val1);
                    int b = int.parse(val2);
                    int res = a * b;

                    ctrl.text = res.toString();
                    clk=false;
                  }

                }, child: Text("=")),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    val2= "*";
                    ctrl.text = val2;

                  }
                  else
                  {
                    val1 = "*";
                    ctrl.text = val1;
                    clk=false;
                  }

                },
                child:Text("×")),


              ],
            ),

          ),
          ElevatedButton(onPressed: (){
            
          }, child: Text("C"))






        ],
      ),



    );
  }
}
