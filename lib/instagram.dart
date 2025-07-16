import 'package:flutter/material.dart';
import 'package:see/screen/insta.dart';
class qqq extends StatefulWidget {
  const qqq({super.key});

  @override
  State<qqq> createState() => _qqqState();
}

class _qqqState extends State<qqq> {
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
            backgroundColor: Colors.black,
            expandedHeight: 380,
            elevation: 2,
            leading: Icon(Icons.lock,color: Colors.white),
            title: Text("CREEPY_MOVIES",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(Icons.add_box_outlined,color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.menu,color:Colors.white),
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
                        backgroundImage: AssetImage("Assets/profile.jpg"),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(" 6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
                          Text(" Posts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(" 1M",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
                          Text(" Follower",style: TextStyle(color:
                          Colors.white),),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text("6",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25)),
                          Text("Following",style: TextStyle(fontSize: 15,color: Colors.white),),
                        ],
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" “Who Will Survive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text(" Savage blood death!",style: TextStyle(
                          color: Colors.white
                        ),),
                        Text("Mystery world",style: TextStyle(color: Colors.white)
                        ),
                        Text( " Shivers on spine",style: TextStyle(color: Colors.white),),
                        Text("Live or die moives",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(onPressed: (){}, child: Text(" Edit profile",style: TextStyle(
                            color: Colors.white,fontSize: 17,
                          ),)),
                        ),
                        SizedBox(width: 35),

                        Expanded(
                          child: OutlinedButton(onPressed: (){}, child: Text(" Share profile",style: TextStyle(
                            color: Colors.white
                          ),)),
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
                  Tab(icon: Icon(Icons.grid_on,color: Colors.white,)),
                  Tab(icon: Icon(Icons.slow_motion_video,color: Colors.white,)),
                  Tab(icon: Icon(Icons.person_outlined,color: Colors.white,weight: 100,)),
                ]
            ),
          ),

                ];
              }, body:TabBarView
          (children:[
            Container(
              height: 500,
              child: GridView.builder(physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (crossAxisCount: 3,
                  childAspectRatio: 1/1.7,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
                itemCount: 6
                  ,
                itemBuilder: (BuildContext,index)
                {
                  return Container(
                    decoration: BoxDecoration(

                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width:150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Assets/smile"

                                  ".jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                      ]

                    ),

                  );
                }



              ),
            ),
        ]


        ),
              ),
        )

        ),

    );

  }
}
