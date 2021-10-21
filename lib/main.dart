import 'package:flutter/material.dart';
import 'package:simulator/screens/master_list.dart';
import 'package:simulator/screens/sign_on.dart';
//import 'package:simulator/add_new.dart';
//import 'package:simulator/screens/master_list.dart';
import 'package:simulator/screens/rate_cards.dart';
import 'package:simulator/screens/cost_sheets.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<StatefulWidget> tabs = <StatefulWidget>[
    SignOn(),
    MasterList(),
    RateCards(),
    CostSheet(),
  ];

  // ignore: always_specify_types

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          backgroundColor: Colors.blue[800],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Sign On',
              icon: Icon(Icons.app_registration),
            ),
            BottomNavigationBarItem(
              label: 'Master List',
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              label: 'Rate Cards',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label: 'Cost Sheets',
              icon: Icon(Icons.calculate),
            ),
          ],
          onTap: (int index) {
            setState(
              () {
                _currentIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
