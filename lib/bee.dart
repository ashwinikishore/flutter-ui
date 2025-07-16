import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:see/Amazon.dart';
import 'package:see/gg.dart';
import 'package:see/home%20page.dart';
import 'package:see/instagram%20profile%20page.dart';
import 'package:see/screen/model.dart';
import 'package:see/spotify.dart';
class ok extends StatefulWidget {
  const ok({super.key});

  @override
  State<ok> createState() => _okState();
}
class _okState extends State<ok> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('home'),
                onTap: () { Navigator.push(context, MaterialPageRoute(builder: (bulider)=> const home()));
                  // Update the state of the app// ...
                },
              ),
              ListTile(
                title: const Text('flipkart'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (bulider)=> const ok()));
                },
              ),
              ListTile(
                title: const Text('Amazon'),

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (bulider)=> joo()));
                },
              ),
              ListTile(
                title: const Text('spotify'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (bulider)=> kee()));
                },
              ),
              ListTile(
                title: const Text('Instagram'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (bulider)=> const instagram()));
                },
              ),

            ],
          )
      ) ,
      appBar: AppBar(

        title: Container(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              hintText: "Search for ...",
                hintStyle: TextStyle(color: Colors.black12),
              border: OutlineInputBorder(
              ),
            ),
          ),
        ),
    //     shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10.2),
    // ),
          backgroundColor: Colors.black12,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic),
          ),
        ],
    ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  //   onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Assets/wel.jpg'),
                        fit: BoxFit.fill
                       ),
                    ),
                  );
                }
            ),
              Container(
                height: 200,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext ,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("Assets/ring3.jpg"),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Text("ring"),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("Assets/ring6.jpg"),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Text("Yellow ring"),
                      ],
                    ),
                  );
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lowest prices",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              height: 150,
                              width:150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("Assets/ring.jpg"),
                                  fit: BoxFit.fill
                                ),
                              ),
                            ),
                          ),
                          Text("Jewels Galaxy Rose Gold-Plated ")
                        ],
                      ),

                    );
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
