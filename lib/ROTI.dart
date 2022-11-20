// import 'dart:html';

import 'package:digital_menu/x.dart';
import 'package:flutter/material.dart';

class Roti extends StatefulWidget {
  Roti({Key? key}) : super(key: key);

  @override
  State<Roti> createState() => _itemState();
}

class _itemState extends State<Roti> {
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
                              "ROTI",
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
                  new_1(price: 88, name: 'Cheese Nan'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 70, name: 'Hariyali Nan'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 100, name: 'Kashmiri Nan'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 68, name: 'Stuffed Masala Nan'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 90, name: 'Butter Kulcha'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 90, name: 'Plain Kulcha'),
                  SizedBox(
                    height: 10,
                  ),
                  
                  new_1(price: 48, name: 'Stuffed Masala Paratha'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 26, name: 'Plain Roti'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 50, name: 'Missi Roti'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 50, name: 'Makai Roti'),
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
