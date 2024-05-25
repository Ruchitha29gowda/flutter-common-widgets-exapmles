import 'package:flutter/material.dart';

class SampleLayout extends StatefulWidget {
  const SampleLayout({super.key});

  @override
  State<SampleLayout> createState() => _SampleLayoutState();
}

class _SampleLayoutState extends State<SampleLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Experiment no 3',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Column(
        children: [
          const Text(
            'Sample Layout',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Color.fromARGB(255, 65, 62, 65),
              decoration: TextDecoration.underline
            ),
          ),


          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: <Widget>[
              Container(
                width: 200,
                child: const Text(
                'A layout sample to understand the Basics of UI layout',

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              ),
              
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(126, 136, 94, 143),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.account_box,
                        size: 40,
                      ),
                      onPressed: (){
                  
                      },
                    )
                    
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(126, 136, 94, 143),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.account_box,
                        size: 40,
                      ),
                      onPressed: (){
                  
                      },
                    )
                    
                  ),
                  
                ],
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: <Widget>[
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(126, 136, 94, 143),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.account_tree,
                        size: 40,
                      ),
                      onPressed: (){
                  
                      },
                    )
                    
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(126, 136, 94, 143),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.account_tree,
                        size: 40,
                      ),
                      onPressed: (){
                  
                      },
                    )
                    
                  ),
                  
                ],
              ),

              Container(
                width: 200,
                child: const Text(
                'Rows and columns are implemented here along with containers',

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              ),
            ],
          ),

  


        ],
      ),



      //Bottom navigation bar same as all
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