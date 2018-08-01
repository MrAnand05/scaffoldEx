import 'package:flutter/material.dart';
import 'package:scaffold_ex/Pages/Page1.dart';
import 'package:scaffold_ex/Pages/Page2.dart';
import 'package:scaffold_ex/Pages/Page3.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget{
  MyAppState createState()=>  MyAppState();
}

class MyAppState extends State<MyApp> {

  int _currentIndex=0;
  Widget callPage(int currentIndexP){
    switch (currentIndexP) {
      case 0:return Pageone();
      case 1:return Pagetwo();
      case 2:return Pagethree();
        
        break;
      default:return Pageone();
    }
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Scaffold Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold Example'),
        ),
        body: callPage(_currentIndex),
        backgroundColor: Colors.deepOrange,
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.access_time),
          label: Text('Hit Me'),
          onPressed: ()=>print('You pressed me'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex=value;
            setState(() {
                          
                        });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alarm),
              title: Text('Alarm')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              title: Text('Add Box')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              title: Text('Circle')
            )
          ],
        ),
      ),
    );
  }
}
