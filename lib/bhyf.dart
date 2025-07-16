import 'package:flutter/material.dart';


class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {


  List abc = [];

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController Ctrl3 = TextEditingController();
  TextEditingController Ctrl4 = TextEditingController();
  TextEditingController covariant = TextEditingController();

  TextEditingController ctrlupt = TextEditingController();
  TextEditingController ctrl2upt =TextEditingController();
  TextEditingController Ctrl3upt= TextEditingController();
  TextEditingController Ctrl4upt = TextEditingController();
  TextEditingController covariantupt= TextEditingController();



  add()
  {
    String text1 = ctrl.text;
    String text2 = ctrl2.text;
    String text3= Ctrl3.text;
    String text4 = Ctrl4.text;
    String text5 = covariant.text;

    abc.add("$text1\n$text2\n$text3\n$text4\n$text5");

setState(() {

});
  }



  route(String data)
  {

    Navigator.push(context, MaterialPageRoute(builder: (context)=>qwe(data: data))).
    then((editval){
      setState(() {

        abc[abc.indexWhere((element)=>element==data)]=editval;

      });
    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CRUD"),),
      body: Column(
        children: [
          TextFormField(controller: ctrl,),
          TextFormField(controller: ctrl2,),
          TextFormField( controller: Ctrl3,),
          TextFormField( controller: Ctrl4,),
          TextFormField( controller:  covariant,),
          OutlinedButton(onPressed: (){
          add();
          }, child: Text("Add")),



          Container(
            height: 80,
            child: ListView.builder(
              itemCount: abc.length,
                itemBuilder: (BuildContext,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.cyanAccent,
                      child: ListTile(
                        onTap: ()
                        {
                          route(abc[index]);
                        },
                        title: Text(abc[index]),
                        trailing: SizedBox(
                          width: 550,
                          child: Row(
                            children: [

                              InkWell(
                                onTap:(){
                                  setState(() {
                                    abc.removeAt(index);
                                  });
                                },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Icon(Icons.delete),
                                  )),



                              InkWell(
                                  onTap: (){


                                    showDialog(context: (context), builder: (context)

                                    {
                                      return AlertDialog(
                                        title: TextFormField(controller: ctrlupt,),


                                        actions: [
                                          OutlinedButton(onPressed: (){
                                            setState(() {
                                              abc[index]=ctrlupt.text;
                                              abc [index]=ctrl2upt.text;
                                              abc[index]=Ctrl3upt.text;
                                              abc[index]=Ctrl4upt.text;
                                              abc[index]=covariant.text;

                                              Navigator.pop(context);
                                            });

                                          }, child: Text("update")),
                                        ],
                                      );
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.edit),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
            },
            ),
          ),



        ],
      ),
    );
  }
}



class qwe extends StatefulWidget {
  String data;
  qwe({super.key,required this.data});

  @override
  State<qwe> createState() => _qweState();
}

class _qweState extends State<qwe> {

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController Ctrl3 = TextEditingController();
  TextEditingController Ctrl4 = TextEditingController();
  TextEditingController covariant = TextEditingController();

  @override
  void initState() {

    List lis = widget.data.split("\n");

    ctrl = TextEditingController(text: lis[0]);
    ctrl2 = TextEditingController(text: lis[1]);
    Ctrl3 =TextEditingController( text: lis[2]);
    Ctrl4 = TextEditingController(text:  lis[3]);
    covariant=TextEditingController(text: lis[4]);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          TextFormField(controller: ctrl,),
          TextFormField(controller: ctrl2,),
          TextFormField(controller: Ctrl3,),
          TextFormField(controller: Ctrl4,),
          TextFormField( controller: covariant,),
          OutlinedButton(onPressed: (){

            String editval= "${ctrl.text}\n${ctrl2.text}\n${Ctrl3.text}\n${Ctrl4.text}\n${covariant.text}";
            Navigator.pop(context,editval);

          }, child: Text("update")),
        ],
      ),
    );
  }
}
