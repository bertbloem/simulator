import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simulator/components/master_list_data.dart';
import 'package:simulator/screens/master_list_screen.dart';
import 'package:simulator/screens/sign_on_screen.dart';
import 'package:simulator/screens/rate_cards_screen.dart';
import 'package:simulator/screens/cost_sheets_screen.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> tabs = <Widget>[
    MasterListScreen(),
    RateCards(),
    CostSheet(),
  ];

  // ignore: always_specify_types

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
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
            items: [
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
      ),
    );
  }
}
