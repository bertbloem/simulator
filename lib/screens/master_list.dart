import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simulator/components/charge_list.dart';
import 'package:simulator/models/charge.dart';

import 'add_charge_screen.dart';

void main() => runApp(const MasterList());

class MasterList extends StatefulWidget {
  const MasterList({Key? key}) : super(key: key); //Angela's Tasks_Screen

  @override
  State<MasterList> createState() => _MasterListState();
}

class _MasterListState extends State<MasterList> {
  List<Charge> charges = [
    Charge(name: 'Pick-Up'),
    Charge(name: 'Airfreight'),
    Charge(name: 'Delivery'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[800],
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled:
                  true, // avoid bottomsheet from covering add button
              builder: (BuildContext context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddChargeScreen((newTaskTitle) {
                    setState(() {
                      charges.add(Charge(name: newTaskTitle));
                    });
                    Navigator.of(context).pop();
                  }),
                ),
              ),
            );
          },
        ),
        // NB! No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('MasterList'),
              centerTitle: true,
              pinned: true,
              floating: true,
              expandedHeight: 185,
              backgroundColor: Colors.blue[800],
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                    image: AssetImage('assets/randomlist_youtube.jpeg'),
                    fit: BoxFit.cover),
              ),
              // actions: <Widget>[
              //   IconButton(
              //     icon: const Icon(Icons.add_circle),
              //     tooltip: 'Add new entry',
              //     onPressed: () {/* ... */},
              //   ),
              // ],
            ),
            // Next, create a SliverList
            ChargeList(charges),
          ],
        ),
      ),
    );
  }
}
