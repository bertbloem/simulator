// import 'package:flutter/material.dart';

// import 'package:simulator/components/charge_item.dart';

// class ChargeItemWidget extends StatelessWidget {

//   ChargeItemWidget(
//     this.item,
//     {required this.animation,
//     required this.onClicked});
//     Key? key;

//   final ChargeItem item;
//   final Animation<double> animation;
//   final VoidCallback onClicked;

//   // @override
//   // Widget build(BuildContext context) {
   
//     throw UnimplementedError();
//   }


//   @override
//   Widget build(BuildContext context) => SizeTransition(
//         sizeFactor: animation,
//         child: Container(
//           margin: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.white,
//           ),
//           child: ListTile(
//             contentPadding:
//                 const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//             leading: const CircleAvatar(
//               radius: 32,
//               backgroundImage: AssetImage(
//                 'assets/theplusone.jpeg',
//               ),
//             ),
//             title: Text(
//               item.title,
//               style: const TextStyle(fontSize: 20),
//             ),
//             trailing: IconButton(
//               icon:
//                   const Icon(Icons.check_circle, color: Colors.green, size: 32),
//               onPressed: onClicked,
//             ),
//           ),
//         ),
//       );
// }
