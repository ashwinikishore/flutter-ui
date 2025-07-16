import 'package:flutter/material.dart';
import 'package:see/instagram%20profile%20page.dart';


class kee extends StatefulWidget {

  @override
  State<kee> createState() => _keeState();

}

class _keeState extends State<kee> {
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
                  backgroundColor: Colors.grey,
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
                              image: AssetImage("Assets/kodi.jpg"),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(" Kodi (Original motion picture Soundtrack)",
                              style: TextStyle(color: Colors.white,fontSize:26,fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Santhosh Narayana "
                                        "  EP"
                                        "5 Oct 2016",
                                    style: TextStyle(color:Colors.black26,fontSize: 15,fontWeight: FontWeight.bold),
                                   ),

                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.download_for_offline,color:Colors.white),
                                      SizedBox(width: 16),
                                      Icon(Icons.more_vert,color: Colors.white),
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
                           itemCount: 5,
                           itemBuilder: (context,intex) {
                             return ListTile(
                               title: Text("Kodi Parakkudha",
                                 style: TextStyle(color:Colors.black45,fontWeight: FontWeight.bold),
                               ),
                               subtitle: Text(" Santhash Narayanan vijayanarain",
                                 style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
                               ),
                               trailing: Icon(Icons.more_vert,color: Colors.black45),
                             );
                           },
                         ),
                       ),
            ),

    );
  }
}
