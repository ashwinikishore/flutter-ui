import 'package:flutter/material.dart';
import 'package:see/bye.dart';
import 'package:see/gg.dart';


class hi extends StatefulWidget {
  const hi({super.key});

  @override
  State<hi> createState() => _hiState();
}

class _hiState extends State<hi> {
  bool _show = false;
  TextEditingController controller =TextEditingController();
  TextEditingController covariant = TextEditingController();
  de(){
    setState(() {
      controller.text.isNotEmpty && covariant.text.isNotEmpty;
    });
  }
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("UnGraduation"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: Form(
          key:_key ,
          child: Column(
            children: [
              SizedBox(
                height:150,
                width: 140,
                child: Image(image: AssetImage("Assets/img.png")),

                ),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'login',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text("login and start learning now",
                            style: TextStyle(color: Colors.blue[400]),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                        controller: controller,
                        onChanged: (i){
                          de();
                        },
                        validator: (input){
                          if(!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(input!));
                          {
                            return " Enter your mail id";
                          }

                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                        controller: covariant,
                        onChanged: (i){
                          de();
                        },
                          validator: (input){
                             if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(input!))
                                {
                               return " Enter your password";
                                       }
                                       return null;
                          },
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute( builder: (context)=>vv()));

                          if(_key.currentState!.validate())
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                              Text("login"),));
                            }
                          }, child: Text("login"),
                            ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Center(
                      child: Text(
                        "by logging in, agree to our terms & condition",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15,color:Colors.black87),
                      ),
                    )
                  ],
                ),

              ),


            ],
          ),
        ),
      ),

    );

  }
}

