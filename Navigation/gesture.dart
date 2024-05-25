import 'package:common_widgets/Navigation/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SampleGesture extends StatefulWidget {
  const SampleGesture({super.key});

  @override
  State<SampleGesture> createState() => _SampleGestureState();
}

class _SampleGestureState extends State<SampleGesture> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Gestures and Navigation',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),


      //GESTURES 
      body: Center(
        child: GestureDetector(

          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const Profile();
            }));
          },


          child: 
          const Text(
            'Click -> Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.amber
            ),
          ),
        ),
      ),

      //Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'phone'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home ),
            label: 'home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu ),
            label: 'menu'
          ),

        ],
      ),

      
    );
 
  }
}