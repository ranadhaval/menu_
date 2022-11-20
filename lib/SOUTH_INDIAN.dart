// import 'dart:html';

import 'package:digital_menu/x.dart';
import 'package:flutter/material.dart';

class south_indian extends StatefulWidget {
  south_indian({Key? key}) : super(key: key);

  @override
  State<south_indian> createState() => _itemState();
}

class _itemState extends State<south_indian> {
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
                              "SOUTH   INDIAN",
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
                  new_1(price: 130, name: 'Mysore Plain Dosa'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 140, name: 'Masala Dosa'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 120, name: 'Mix Uttapam'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 105, name: 'Upma Chatni'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 150, name: 'Sparing Dosa'),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
