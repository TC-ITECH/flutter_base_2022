import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
//  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar (),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Notification Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Settings Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcecec),

      appBar: AppBar(

        titleSpacing: 0,
        centerTitle: true,
        title: Text(
            "Delivery Management System"),

        backgroundColor: Colors.deepPurple,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Image.asset(
              "assets/my.png",
            ),
          ),
      ),

      body: Container(
          alignment: Alignment.center,

          child: Column(

              children: [

                SizedBox(height: 10),
                Container(

                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(width: 1,
                          color: Colors.black,
                      )
                  ),
                  child: Text(''),
                  width: 340,
                  height: 160,

                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffbad8d9),
                    border: Border.all(width: 1,
                        color: Colors.black),
                  ),
                  child: FittedBox(
                      child: Column(

//                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text('In Transit',style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),),
                          const SizedBox(height: 20),
                          Text(
                            'You are on the way to ABC Sdn Bhd',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Click button below when you reach the location',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: Container(

                              height: 40,width: 560,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                    border: Border.all(width: 1.0, color: Colors.grey),
                                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [

                                      Text('I Have Arrived', style: TextStyle(color: Colors.black),),
//                                      Icon(Icons.edit_location, color: Colors.grey)
                                    ]
                                )

                            ),
                            onTap: () {
                              setState(() {
//                                text = 'Locations Tapped!';
                              });
                            },
                          ),
                        ],
                      ),
                  ),
                  width: 340,
                  height: 160,
                ),
                SizedBox(
                  height: 05,
                ),
                Text(
                  'Information For You',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                Text(
                  'Date 01-01-2021',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1,
                        color: Colors.black,
                      )
                  ),
                  child: Text(''),
                  width: 340,
                  height: 120,

                ),
                SizedBox(
                  height: 100,
                ),
              ],

          ),
      ),


      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),

                title: Text('Home'),
                backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notification'),
                backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}