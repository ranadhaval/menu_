// import 'dart:html';

import 'package:digital_menu/x.dart';
import 'package:flutter/material.dart';

class PUNJABI extends StatefulWidget {
PUNJABI ({Key? key}) : super(key: key);

  @override
  State<PUNJABI > createState() => _itemState();
}

class _itemState extends State<PUNJABI > {
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
                              "PUNJABI",
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
                  new_1(price: 220, name: 'Paneer Tofani'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 115, name: 'Shahi Paneer'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 140, name: 'Palak Paneer'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price:220, name: 'Paneer Lakhanavi'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price:200, name: 'Paneer Jalfreji'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 130, name: 'Mutter Paneer'),
                  SizedBox(
                    height: 10,
                  ),
                  
                  new_1(price: 210, name: 'Paneer Pasnda'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 200, name: 'Spacial Paneer'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price:220, name: 'Paneer Angara'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price:200, name: 'Paneer Kadai'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 215, name: 'Paneer Lasuni'),
                  SizedBox(
                    height: 10,
                  ),
                  
                  new_1(price: 210, name: 'Paneer Mughalai'),
                  SizedBox(
                    height: 10,
                  ),
                  
                  new_1(price: 215, name: 'Cheese Angoori'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 215, name: 'Paneer Bhurji'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price:170, name: 'Aloo Jerra'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price:190, name: 'Punjabi Dum Aloo'),
                  SizedBox(
                    height: 10,
                  ),
                  new_1(price: 215, name: 'Paneer Lababdar'),
                  SizedBox(
                    height: 10,
                  ),
                ],
  
            ),
          )),
    ));
  }
}
