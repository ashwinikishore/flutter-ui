

import 'package:flutter/material.dart';
import 'package:see/screen/insta.dart';

class instagram extends StatelessWidget {
  const instagram({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext,bool)
              {
                return [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    expandedHeight: 380,
                    elevation: 2,
                    leading: Icon(Icons.lock,color: Colors.black),
                    title: Text(" _manu_sho_^",
                      style: TextStyle(color: Colors.black,),
                    ),
                     actions: [
                       Icon(Icons.add_box_outlined,color: Colors.black),
                       SizedBox(width: 16),
                       Icon(Icons.menu,color:Colors.black),
                       SizedBox(width: 12),
                       Column(
                         children: [
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 16),
                             child: Row(
                               children: [

                               ],
                               
                             ),
                           )
                         ],
                       ),
                     ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                            SizedBox(height: 80,),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("Assets/cats.jpg"),
                              ),
                                  Spacer(),
                                Column(
                                  children: [
                                    Text(" 5",style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(" posts"),
                                  ],
                                ),
                               SizedBox(width: 20),
                              Column(
                                children: [
                                  Text(" 1M",style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" Follower"),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Text("6",style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text("Following"),
                                ],
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(" *...Manu...*",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text(" Wish me on 21"),
                              Text(" Peace be amplified word be rectified"),
                              Text( "rectified"),
                              Text(" luv"),
                            ],
                          ),
                          ),
                           Padding(
                             padding: const EdgeInsets.all(16.0),
                             child: Row(
                               children: [
                                 Expanded(
                                     child: OutlinedButton(onPressed: (){}, child: Text(" Edit profile")),
                                 ),
                                  SizedBox(width: 35),
                                 Expanded(
                                     child: OutlinedButton(onPressed: (){}, child: Text(" Share profile")),
                                 ),
                                 Expanded(child: Icon(Icons.person_add_alt),
                                 ),
                               ],
                             ),
                           ),
                        ],
                      ),
                    ),
                    bottom: TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.grid_on)),
                          Tab(icon: Icon(Icons.slow_motion_video)),
                          Tab(icon: Icon(Icons.person_outlined)),
                        ]
                    ),
                  ),

                ];
              },
              body: TabBarView(
                children:[
                  Container(
                    height: 500,
//color: Colors.cyan,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1/1.7,// number of items in each row
                          mainAxisSpacing:10, // spacing between rows
                          crossAxisSpacing: 10, // spacing between columns
                        ),
                        itemCount: listt.length,
                        itemBuilder: (BuildContext ,index)
                        {
                          return Container(
                            decoration: BoxDecoration(

                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width:150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("Assets/cats.jpg"),
                                        fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          );
                        }
                    ),
                  ),
                  Container(color: Colors.white),
                  Container(color: Colors.white),
                ],
              ),
          ),
        ),
      ),
    );
 }
}
