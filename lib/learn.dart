import 'package:flutter/material.dart';
class learn extends StatefulWidget {
  const learn({super.key});

  @override
  State<learn> createState() => _learnState();
}

class _learnState extends State<learn> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),

            ),


            child: Padding(
              padding: const EdgeInsets.all(50),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  prefixIcon: Icon(Icons.search)
                ),
              ),
            ),


          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: "Courses"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}


