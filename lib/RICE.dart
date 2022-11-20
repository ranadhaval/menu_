// import 'dart:html';

import 'package:digital_menu/x.dart';
import 'package:flutter/material.dart';

class Rice extends StatefulWidget {
  Rice({Key? key}) : super(key: key);

  @override
  State<Rice> createState() => _itemState();
}

class _itemState extends State<Rice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("Assets/new.jpeg"))),
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "RICE",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                        child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Text(
                            "ITEM",
                            style: TextStyle(fontSize: 27, color: Colors.white),
                          )),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text("PRICE",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        ),
                      ),
                    ])),
                  ),
                  new_1(price: 195, name: 'Spacial Veg. Biriyani'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 205, name: 'Hydrabadi Biriyani'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 180, name: 'Peas Pulao'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 200, name: 'Kashmiri Pulao'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 150, name: 'Jeera Rice'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 150, name: 'Lemon Rice'),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
