import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class overview extends StatefulWidget {
  const overview({super.key});

  @override
  State<overview> createState() => _overviewState();
}

class _overviewState extends State<overview> {
  Widget nnn(String name, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        // tileColor: Colors.blueGrey,
        trailing: Container(
          
          child: Column(
            children: [
              Icon(
                Icons.delete,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Delete", style: TextStyle(color: Colors.white60)),
            ],
          ),
        ),
        title: Container(
            padding: EdgeInsets.all(2),
            color: Colors.white,
            child: Center(
                child: Text(
              "$name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))),
        subtitle: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "$price ₹",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Overview",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.black,
        elevation: 10,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("Assets/new.jpeg"))),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: SingleChildScrollView(
                child: Column(
              children: [
                nnn('Paneer tadka', '1230'),
                nnn('Spring roll', '1200'),
                nnn('Paneer chilli', '560'),
                nnn('Noodels', '120'),
                nnn('Pasta', '230'),
                nnn('Tawa fry', '340'),
                nnn('Dal fry', '300'),
                nnn('Maanchurian', '120'),
                // nnn(),
                // // nnn(),
                // nnn(),
                // nnn(),
              ],
            )),
          )),
    );
  }
}
