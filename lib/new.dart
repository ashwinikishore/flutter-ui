import 'package:flutter/material.dart';
class nnn extends StatefulWidget {
  const nnn({super.key});

  @override
  State<nnn> createState() => _nnnState();
}

class _nnnState extends State<nnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext,bool)
          {
            return [
              SliverAppBar(
                expandedHeight:450,
                backgroundColor: Colors.black,
                leading: Column(
                  children: [
                    Icon(Icons.arrow_back),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Container(
                        height:250,
                        width:180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          image: DecorationImage(
                            image: AssetImage("Assets/spot.jpg"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(" Dheena (Original motion picture Soundtrack)",
                            style: TextStyle(color: Colors.white,fontSize:26,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "Yuvan shanker raja "
                                      "  EP"
                                      "5 Oct 2016",
                                  style: TextStyle(color:Colors.black26,fontSize: 15,fontWeight: FontWeight.bold),
                                ),

                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      height: 20,width: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/spot.jpg"))
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Icon(Icons.download_for_offline,color:Colors.white),
                                    ),
                                    SizedBox(width: 16),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Icon(Icons.more_vert,color: Colors.white),
                                    ),
                                    Icon(Icons.play_arrow_rounded,color: Colors.green,)
                                  ],
                                ),
                              ],

                            ),

                          ),




                        ],
                      ),
                    ],

                  ),

                ),
              ),
            ];
          },
          body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context,intex) {
              return
                Column(
                  children: [
                    ListTile(
                    title: Text("Ennenjil Ninangalae",
                      style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(" Yuvan shanker raja ,vaali,shankar ma...",
                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.more_vert,color: Colors.black45),

                                  ),
                    ListTile(
                      title:  Text("Nee illai endral",
              style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold),
              ),
              subtitle: Text(" Yuvan shanker raja ,vaali,shankar ma...",
              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.more_vert,color: Colors.black45),
                    )
                  ],
                );

            },
          ),
        ),
      ),

    );
  }
}



