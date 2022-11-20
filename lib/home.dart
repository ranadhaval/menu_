// import 'dart:html';

import 'package:digital_menu/CHINESE.dart';
import 'package:digital_menu/MOCKTAILE.dart';
import 'package:digital_menu/PANJABI.dart';
import 'package:digital_menu/RICE.dart';
import 'package:digital_menu/ROTI.dart';
import 'package:digital_menu/SOUTH_INDIAN.dart';
import 'package:digital_menu/item.dart';
import 'package:digital_menu/item_2.dart';
import 'package:digital_menu/overview.dart';
import 'package:digital_menu/provider/company.dart';
import 'package:digital_menu/provider/product_model.dart';
import 'package:digital_menu/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';

class my_app extends StatefulWidget {
  my_app({Key? key}) : super(key: key);

  @override
  State<my_app> createState() => _my_appState();
}

class _my_appState extends State<my_app> {
  Widget cc(String name, Route rr) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.push(context, rr),
        child: Container(
          width: MediaQuery.of(context).size.width / 2.3,
          height: 90,
          // color: Colors.black,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: Center(
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "$name",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Colors.white,
                    decorationColor: Colors.transparent),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProdictSE>(context);


// this code will take data from the findby id method and all data store in the class name product
    Product produ = productProvider.findByID('werr');

    // this is a company  list andd data of this list  we get threw give data method
    List<Company> da = productProvider.givedata();

// Company prod1 = productProvider.findById("45");


    print("new data madya nacho");
    print(da.length);
    print(da);

    print(produ.id);
    print(produ.name);

    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black,
        overlayColor: Colors.black,
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
            onTap: () {},
            child: Icon(Icons.bar_chart_rounded),
            backgroundColor: Colors.green,
            label: "Help & Support",
          ),
          SpeedDialChild(
            child: Icon(Icons.format_list_numbered_rtl_outlined),
            backgroundColor: Colors.red,
            label: "Order Overview",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => overview()));
            },
          ),
        ],
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("Assets/new.jpeg"))),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MILESTONE RESTAURANT ",
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 25),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    cc('STRATER', MaterialPageRoute(builder: (_) => item())),
                    cc('SALAD', MaterialPageRoute(builder: (_) => item_2()))
                  ],
                ),
                Row(
                  children: [
                    cc('PANJABI', MaterialPageRoute(builder: (_) => PUNJABI())),
                    cc('ROTI', MaterialPageRoute(builder: (_) => Roti()))
                  ],
                ),
                Row(
                  children: [
                    cc('CHINESE', MaterialPageRoute(builder: (_) => Chinese())),
                    cc('RICE', MaterialPageRoute(builder: (_) => Rice()))
                  ],
                ),
                Row(
                  children: [
                    cc('MOCKTAILE',
                        MaterialPageRoute(builder: (_) => moktaile())),
                    cc('SOUTH INDIAN',
                        MaterialPageRoute(builder: (_) => south_indian()))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
