import 'package:flutter/material.dart';

class SampleNavigation extends StatefulWidget {
  const SampleNavigation({super.key});

  @override
  State<SampleNavigation> createState() => _SampleNavigationState();
}

class _SampleNavigationState extends State<SampleNavigation> {

  //for the bottom navigation bar
    int selectedIndex = 0;
    void onTapped(int indx){
      setState(() {
        selectedIndex = indx;
      });
    }

    //list of widgets to be shown
    static const List<Widget> centerContent = <Widget>[
      Text(
        'PHONE',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.amber
        ),
      ),

      Text(
        'HOME',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.amber
        ),
      ),

      Text(
        'Menu',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.amber
        ),
      ),
    ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Navigation',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Center(
        child: centerContent.elementAt(selectedIndex),
      ),

      //Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone, color: Colors.green),
            label: 'phone'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green ),
            label: 'home'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.green ),
            label: 'menu'
          ),

        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: onTapped,
      ),

      
    );
 
  }
}