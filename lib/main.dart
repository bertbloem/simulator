import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simulator/components/master_list_data.dart';
import 'package:simulator/expansion_tile_card_demo.dart';
import 'package:simulator/screens/master_list_screen.dart';
import 'package:simulator/screens/sign_on_screen.dart';
import 'package:simulator/screens/rate_cards_screen.dart';
import 'package:simulator/screens/cost_sheets_screen.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
// Avoid errors caused by flutter upgrade.
// Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
// Open the database and store the reference.
  final database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'chargetile_database.db'),
// When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE chargetile(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );

  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> tabs = <Widget>[
    SignOn(),
    MasterListScreen(),
    MyHomePage(),
    RateCards(),
    CostSheet(),
  ];

  // ignore: always_specify_types

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // CHANGE NOTIFIER CHANGE NOTIFIER
      create: (_) =>
          MasterListData(), // => RETURNS, CREATES, PROVIDES MASTERLISTDATA OBJECT
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme()
        ),
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
                label: 'ExpandTile',
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
      ),
    );
  }
}
