import 'package:flutter/material.dart';
import 'package:linked_in/screens/home/home.dart';
import 'package:linked_in/screens/networks/network.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  var currentIndex = 0;

  var _pages = [
    Home(),
    Network(),
    Text('Screen 3'),
    Text('Screen 4'),
    Text('Screen 5'),
  ];

  void changeTab(tabIndex) {
    setState(() {
      currentIndex = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: _pages[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
		  currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 12,
          unselectedFontSize: 10,
          onTap: changeTab,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'My Network',
              icon: Icon(Icons.people),
            ),
            BottomNavigationBarItem(
              label: 'Post',
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              label: 'Notifications',
              icon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              label: 'Jobs',
              icon: Icon(Icons.shopping_bag),
            ),
          ],
        ),
      ),
    );
  }
}
