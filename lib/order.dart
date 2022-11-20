// // import 'dart:html';

// import 'dart:ffi';

// import 'package:digital_menu/class_s.dart';
// import 'package:flutter/material.dart';

// class order extends StatefulWidget {
//   // String NAMAE;
//   // Int PRICE;
//   // order({required this.NAMAE, required this.PRICE});
//   // order({Key? key}) : super(key: key);

//   @override
//   State<order> createState() => _orderState();
// }

// class _orderState extends State<order> {
//   int count = 0;
//   int price = 0;
//   // starter n_1 = starter();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black54,
//         title: Text(
//           "ADD YOUR ORDER",
//           style: TextStyle(fontSize: 27, color: Colors.white),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 fit: BoxFit.cover, image: AssetImage("Assets/new.jpeg"))),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 height: 40,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.black45,
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Soup",
//                     style: TextStyle(fontSize: 25, color: Colors.white54),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ListTile(
//               leading: Text(
//                 'Total Quantity :- ',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),

//             Row(children: [
//               Text("",style: TextStyle(color:Colors.white),)
//             ],),
//             SizedBox(
//               height: 20,
//             ),
//             ListTile(
//                 leading: Text("Total Amount :- ",
//                     style: TextStyle(color: Colors.white, fontSize: 20))),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 height: 40,
//                 width: 230,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.white54,
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Amount :- $price ₹",
//                     style: TextStyle(fontSize: 25, color: Colors.black45),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 50),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 height: 40,
//                 width: 200,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.green,
//                 ),
//                 child: Center(
//                   child: Text(
//                     "ORDER",
//                     style: TextStyle(fontSize: 25, color: Colors.white54),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
