import 'dart:async';

import 'package:digital_menu/home.dart';
import 'package:digital_menu/provider/provider.dart';
import 'package:flutter/material.dart';
// import 'package:laptop/screens/homescreen.dart';
// import 'package:laptop/screens/leadingpage.dart';
import 'package:provider/provider.dart';

// import '../provider/product_provider.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({Key? key}) : super(key: key);

  @override
  _SplaceScreenState createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  startTimer() {
    Timer(Duration(seconds: 5), () async {
      Route newRoute = MaterialPageRoute(builder: (c) => my_app());
      Navigator.pushReplacement(context, newRoute);
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  Widget build(BuildContext context) {
    // TELL THAT FETCH MY DOCUMENTS

    final productProvider = Provider.of<ProdictSE>(context);
    // productProvider.FetchProducts();
    productProvider.feathnarodata();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.network(
                  "https://images.vexels.com/media/users/3/158671/isolated/preview/c051cb3ce81ebb07373aaef516f8f421-notebook-laptop-illustration.png"),
            ),
            Text(
              "Best Laptop",
              style: TextStyle(
                  fontFamily: "jay",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )
          ],
        ));
  }
}
