import 'package:flutter/material.dart';

class SimpleUI extends StatefulWidget {
  const SimpleUI({super.key});

  @override
  State<SimpleUI> createState() => _SimpleUIState();
}

class _SimpleUIState extends State<SimpleUI> {

  int indx = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Images, icons, drawers',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        actions: const [
          Padding(padding: EdgeInsets.all(8)),
          Icon(
          Icons.account_circle,
          color: Colors.black,
          size: 30,
        ),
        ],
      ),

      body:  Center(
        child: 
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                height: 300,
                width: 300,
                child: const Image(image: AssetImage('assets/flutter.png')),
              ),
              const Text(
                'Flutter image',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue
                ),
              ),

              const Text(
                '\n\n\nClick on the \nmenu icon \nabove to open the drawer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
                ),
              ),


            ],
          )
        
      ),
      drawer: Drawer(
        
        child: ListView(
          
          padding: EdgeInsets.zero,

          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 127, 91)
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),
              )
            ),
            ListTile(
              title: Text(
                'Profile_page',
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 127, 91),
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Dashboard',
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 127, 91),
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 127, 91),
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
            )
          ],
        ),
      ),

     
      
    );
 
  }
}