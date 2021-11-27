// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:simulator/components/data.dart';

// import 'package:simulator/components/charge_item.dart';
// import 'package:simulator/components/charge_item_widget.dart';

// // ignore: use_key_in_widget_constructors
// class MasterList extends StatefulWidget {
//   @override
//   _MasterListState createState() => _MasterListState();
// }

// class _MasterListState extends State<MasterList> {
//   final GlobalKey<AnimatedListState> key = GlobalKey<AnimatedListState>();
//   // Add a field to our State with items which we want to put into our list ***
//   final List<ChargeItem> items = List<ChargeItem>.from(Data.masterList);
//   List<int> top = <int>[];
//   List<int> bottom = <int>[0];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         drawer: Drawer(
//           //   // Add a ListView to the drawer. This ensures the user can scroll
//           //   // through the options in the drawer if there isn't enough vertical
//           //   // space to fit everything.
//           child: ListView(
//             //     // Important: Remove any padding from the ListView.
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               const DrawerHeader(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     alignment: AlignmentDirectional.center,
//                     image: AssetImage('assets/list.jpeg'),
//                     fit: BoxFit.cover,
//                   ),
//                   color: Colors.blueAccent,
//                 ),
//                 child: Text(''),
//               ),
//               ListTile(
//                 title: const Text(
//                   'Master List',
//                   style: TextStyle(
//                     fontSize: 17.0,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//               ListTile(
//                 title: const Text('Item 1'),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//             ],
//           ),
//         ),
//         backgroundColor: Colors.blue[700],

//         body: CustomScrollView(
//           slivers: <Widget>[
//             const SliverAppBar(
//               title: Text("Master Charge List"),
//               floating: true,
//               flexibleSpace: Placeholder(),
//               expandedHeight: 200,
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) => ListTile(title: Text('Item #$index')),
//                 childCount: 1000,
//               ),
            
//             Column(
//               children: <Widget>[
//                 const Image(
//                   image: AssetImage('assets/list.jpeg'),
//                 ),
//                 Expanded(
//                   //above ***items comes into the animated list here
//                   child: AnimatedList(
//                     key:
//                         key, //see Global Key in masterlist state NB here to do the animation and tells the list over the key that this itemcount changed and then he will do the animation for us
//                     initialItemCount: items.length,

//                     itemBuilder: (BuildContext context, int index,
//                             Animation<double> animation) =>
//                         buildItem(items[index], index, animation),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   child: buildInsertButton(),
//                 ),
            
//               ],
//             ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildItem(ChargeItem item, int index, Animation<double> animation) {
//     return ChargeItemWidget(
//       item: item, //this will be type ChargeItem
//       animation: animation,
//       onClicked: () => removeItem(index),
//     );
//   }

//   void removeItem(int index) {
//     //need to remove twice, 1st from items list as below and next!!!
//     final ChargeItem item = items.removeAt(index);

//     //currentState is animated list state.....also remove from !!! the animated list
//     key.currentState!.removeItem(
//         index,
//         //below "please build this item and do the animation"
//         (BuildContext context, Animation<double> animation) =>
//             buildItem(item, index, animation));
//   }

//   Widget buildInsertButton() => ElevatedButton(
//         child: const Text(
//           'Insert item',
//           style: TextStyle(fontSize: 20),
//         ),
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
//         ),
//         onPressed: () => insertItem(0, Data.masterList.first),
//       );

//   void insertItem(int index, ChargeItem item) {
//     items.insert(index, item);
//     key.currentState!.insertItem(index);
//   }
// }
