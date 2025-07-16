import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:see/bee.dart';
import 'package:see/gg.dart';
import 'package:see/screen/model.dart';
import 'package:see/spotify.dart';
class joo extends StatefulWidget {
  const joo({super.key});

  @override
  State<joo> createState() => _jooState();
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _jooState extends State<joo>{

bool light =false;
 String drop = "1";
  var dropdownvalue = [
    "1","2","3"," 4",
  ];
    int currentIndex=0;

String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
           children: [
             ListTile(
               leading: Icon(Icons.home),
               title: Text(" home"),
               onTap: ()
               {
                 Navigator.push(context, MaterialPageRoute(builder: (bulider)=> const ok()));

               }
             ),
           ],
        ),
      ),
      appBar: AppBar(
      backgroundColor: Colors.cyan,
             title: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 35,
                 child: TextFormField(
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search,color: Colors.black),
                     hintText: " search Amazon.in ...",
                     fillColor: Colors.white,
                     filled: true,
                     suffixIcon: SizedBox(width: 80,
                         child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Icon(Icons.camera_alt_outlined),
                           ),
                       ],
                     ),

                     ),
                   ),

                 ),
               ),
             ),
           ),
          body: SingleChildScrollView(
            child:Column(
                  children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(" visit the fashion store"
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RatingBar.builder(
                          itemSize: 15,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                           // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                               ),
                      ) ,Text("(112)")
                     ],
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Transform your vision into a bespoke masterpiece with House of Quadrille. Begin your custom journey today"),
                    ),
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 140),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (indext,reason)
                    {
                      setState(() {
                        currentIndex= indext;
                      });
                    },
                    scrollDirection : Axis.horizontal,
                  ),
                  itemCount: listt.length,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/ring3.jpg"),
                              fit: BoxFit.fill
                          )
                      ),
                    );
                  }
              ),
                    DotsIndicator(
                      dotsCount: listt.length,
                      position: currentIndex.toDouble(),
                      decorator: DotsDecorator(
                        size:Size.square(7.2),
                        activeSize: Size(15,8.5),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 280,

                      child: ListView.builder(

                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext ,index)
                        {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 185,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.cyan,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage("Assets/ring6.jpg"),
                                            fit: BoxFit.fill
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(child: Text("Gold")),

                                ]
                            ),
                          );
                        },

                      ),
                    ),
                    Text(" limited time deal",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(width: 10),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text("-83%",
                    //       style: TextStyle(
                    //         color: Colors.red,
                    //         fontSize: 22,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     Text("169",
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // Positioned(
                    //   left: 1,
                    //   top: 5,
                    //   child: Text("-83%off", style: TextStyle(fontWeight:FontWeight.w200) ,
                    //   ),
                    // ),
                    Container(
                      child: Row(
                        children: [
                          RichText(text: TextSpan(children: [
                            TextSpan(text: " M.R.P:",style: TextStyle()),
                            TextSpan(text: "6.222",style: TextStyle(decoration:TextDecoration.overline)),
                          ]))
                        ],
                      ),
                    ),
                    Container(
                      child: RichText(text: TextSpan(children: [
                        TextSpan(text: " Free delivery saturday,7 june on order dispatched by Amazon over 466 detail",style: TextStyle(fontSize: 20,color: Colors.lightBlue)),
                        TextSpan(text: "  or fastest delivery Tomorrow, 6 june order within 8 hrs 19 mins .detail",style: TextStyle(fontSize: 15,color: Colors.black)),
                        TextSpan(text: " Delivering to Coimbatore 641014 - update location ",style:TextStyle(fontSize: 20, color: Colors.cyan), )
                      ])),

                    ),
                    Container(
                      child: ListTile(
                        leading: Icon(Icons.local_offer),

                        title: Text(" All Offers & discount"),
                        trailing: Icon(Icons.arrow_back_ios_new_rounded),

                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_pin),

                          Text(" Delivering to map")
                        ],
                      ),
                    ),

                    Container(
                      height:45,
                      width: 350,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(35)
                      ),
                      child: Center(child: Container(child: Text(" Bye Now",style: TextStyle(fontSize: 20),),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          height:45 ,
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(35)
                          ),
                          child: Center(child: Container(child: Text(" ADD to card",style: TextStyle(fontSize: 20),),)),
                        ),
                      ),
                    ),

    ],
      ),
    ),

    );
  }
}
