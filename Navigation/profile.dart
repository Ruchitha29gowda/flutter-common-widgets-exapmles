import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: const Center(
        child: Text(
          '        Welcome \nto the Profile page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.amber
          ),
        )
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