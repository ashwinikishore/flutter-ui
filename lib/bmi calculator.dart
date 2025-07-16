import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController weightctrl =  TextEditingController();
  TextEditingController heightctrl = TextEditingController();

  void caluculate(){
    double? a  = double.parse(weightctrl.text);
    double? b = double.parse(heightctrl.text);

    double x = b * b ;
    double y = a / x;
    double z = b *100;
    
    showDialog(context: context, builder: (context)
    {
      return AboutDialog(
        children: [
          Text(" WEIGHT:$a"),
          Text(" HEIGHT:$z cm",),

          Text("CALCULATION: $y "),
        ],
      );
      
    });


}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent,fontSize: 30),),
        ),

      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              controller: weightctrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(

                ),
                labelText: "Enter weight",
              ),


            ),

          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: TextFormField(
              controller: heightctrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter height"
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            caluculate();
          }, child: Text("CALCULATE"))
        ],
        
      ),
      
      
    );
  }
}
