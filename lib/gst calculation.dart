import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {


  final TextEditingController priceController =TextEditingController();
  final TextEditingController gstController = TextEditingController();
  String result = "";


  void CalculateGst() {
    double? price = double.tryParse(priceController.text);
    double?gst = double.tryParse(gstController.text);

    if ( price == null || gst == null) {
      setState(() {
        result = " Enter the valid values";
      });
      return;
    }
    double gstAmount = (price * gst ) / 100;
    double totalAmount = price + gstAmount;

    setState(() {
      showDialog(context: context, builder: (BuildContext){
        return AboutDialog(
          children: [
            Text(" $result"),
          ],
        );
      });
      result = " Original price = \u20B9$price\n"
      "GST Rate: $gst%\n"
      "Gst Amount : \u20B9${gstAmount.toStringAsFixed(2)}\n"
      " Final Amount: \u20B9${totalAmount.toStringAsFixed(2)}\n";

    });
  }
  inclu() {
    double? price = double.tryParse(priceController.text);
    double? gst = double.tryParse(gstController.text);

    double priceAmount= 100 + gst!;
    double gstAmount = priceAmount/ 100;
    double currentAmount = price! / gstAmount;
    double totalAmount =  price - currentAmount;

    print(totalAmount);

    showDialog(context: (context), builder:(BuildContext) {
      return AboutDialog(
        children: [
          Text(" $result")
        ],
      );
    });

    result = " Original price = \u20B7$price\n"
        "GST Rate: $gst%\n"
        " Amount : \u20B7${currentAmount.toStringAsFixed(3)}\n"
        " Tax Amount: \u20B7${totalAmount.toStringAsFixed(3)}\n";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GST CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Amount"
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: gstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: " Enter GST %"
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: (){
               inclu();
              }, child: Text(" Incisive"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                CalculateGst();
              }, child: Text(" Excessive")),
            ),
          ],
        ),
      ),
    );
  }
}

