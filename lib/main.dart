import 'dart:convert';

import 'package:digital_menu/home.dart';
import 'package:digital_menu/model/postman.dart';
import 'package:digital_menu/provider/provider.dart';
import 'package:digital_menu/splace.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ProdictSE()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: SplaceScreen(),
//       ),
//     );
//   }
// }

void main() {
  runApp(my());
}

class my extends StatefulWidget {
  const my({super.key});

  @override
  State<my> createState() => _myState();
}

class _myState extends State<my> {
  List<MyModel> my_list = [];
  Future<List<MyModel>> get_data() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      // Map<dynamic> i;
      for (Map<String, dynamic> i in data) {
        my_list.add(MyModel.fromJson(i));
      }
      return my_list;
    } else {
      return my_list;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Expanded(
        child: FutureBuilder(
            future: get_data(),
            builder: ((context, snapshot) {
              if (!snapshot.hasData) {
                return Text("Loding");
              }
              return ListView.builder(
                  itemCount: my_list.length,
                  itemBuilder: ((context, index) {
                    return Container(
                        color: Colors.white,
                        child: Text(
                          "${my_list[index].title}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              decoration: TextDecoration.none),
                        ));
                  }));
            })),
      ),
    );
  }
}
