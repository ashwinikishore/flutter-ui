import 'package:flutter/material.dart';


class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  String val1="",val2="",optr= "+";
  String val3="",val4="",val5="",val6="";


  
  bool clk = false;

  TextEditingController ctrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          TextFormField
            (controller: ctrl,),




          SizedBox(height: 50,),
          Row(
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
                    val1 = "1";
                    ctrl.text = val1;
                  }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){


                if(clk)
                {
                  val2= "2";
                  ctrl.text = val2;
                }
                else
                {
                  val1 = "2";
                  ctrl.text = val1;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){

                ctrl.text = "3";

                optr = "+";

                clk = true;

              }, child: Text("3")),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2= "2";
                  ctrl.text = val2;
                }

              }, child: Text("+")),

            ],
          ),
          Column(
            children: [
              Row(

                children: [
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val4= "4";
                      ctrl.text = val4;
                    }
                    else
                    {
                      val1 = "4";
                      ctrl.text = val1;
                    }


                   },
                     child: Text("4")),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val5= "5";
                      ctrl.text = val5;
                    }
                    else
                    {
                      val1 = "5";
                      ctrl.text = val4;
                      optr="+";
                    }

                  }, child: Text("5")),
                  ElevatedButton(onPressed: (){
                    if(clk)
                    {
                      val6= "6";
                      ctrl.text = val6;
                    }
                    else
                    {
                      val1 = '6';
                      ctrl.text = val1;
                      optr="+";
                    }
                  }, child: Text("6")),
                  ElevatedButton(onPressed: (){
                    if(optr == "+")
                    {
                      int a = int.parse(val1);
                      int b = int.parse(val2);
                      int c = int.parse(val3);
                      int d = int.parse(val4);
                      int e= int.parse(val5);
                      int f = int.parse(val6);

                      int res = a +b;
                      int sss =c+d;
                      int qqq =e+f;

                      ctrl.text = res.toString();

                    }

                  }, child: Text("="))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
