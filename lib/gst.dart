import 'package:flutter/material.dart';


class gstt extends StatefulWidget {
  const gstt({super.key});

  @override
  State<gstt> createState() => _gsttState();
}

class _gsttState extends State<gstt> {

  TextEditingController amountctrl = TextEditingController();
  TextEditingController taxctrl = TextEditingController();


  String result = "";


  void calcu() {
    double? price = double.tryParse(amountctrl.text);
    double? gst = double.tryParse(taxctrl.text);


    double a = gst! + 100;
    double b = a / 100;
    double c = price! / b;

    showDialog(context: context, builder: (context) {
      return AboutDialog(
        children: [
          Text("GST AMOUNT: $a",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Text("AMOUNT: $c",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Text("GST TAX % : $b",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)



        ],
      );

    });
  }
  exclu(){
    double? price = double.tryParse(amountctrl.text);
    double? gst = double.tryParse(taxctrl.text);

double a = 100 + gst!;
double b = price! / 100;
double c = a !/ b;
double d = a - c;





    showDialog(context: context, builder: (context)
    {
      return AboutDialog(
        children: [
          Text("PRICE : $a",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          Text("GST: $b",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          Text("AMOUNT:$c",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          Text("FINAL AMOUNT:$d",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),

        ],
      );

    });

  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Center(child: Text(
          "GST CALCULATOR", style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              controller: amountctrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(

                ),
                labelText: "ENTER AMOUNT:",
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
                fillColor: Colors.white,

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              controller: taxctrl,
              decoration: InputDecoration(
                  border: OutlineInputBorder(

                  ),
                  labelText: "ENTER TAX:",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87)
              ),
            ),
          ),
          SizedBox(
            height: 50,

          ),
          ElevatedButton(onPressed: () {
            calcu();
          },
              child: Text("Inclusive",
                style: TextStyle(color: Colors.black, fontSize: 15),)),
          Padding(
            padding: const EdgeInsets.all(9),
            child: ElevatedButton(onPressed: () {
              exclu();
            },
                child: Text("Exclusive",
                  style: TextStyle(fontSize: 15, color: Colors.black87),)),
          ),
        ],


      ),
    );
  }
}