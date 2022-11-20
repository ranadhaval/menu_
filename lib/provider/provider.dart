import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digital_menu/provider/company.dart';
import 'package:digital_menu/provider/product_model.dart';
import 'package:flutter/material.dart';
// import 'package:laptop/models/product_model.dart';

class ProdictSE with ChangeNotifier {
  List<Product> products = [];
  List<Company> dofa = [];

  Future<void> feathnarodata() async {
    dofa = [];

    await FirebaseFirestore.instance
        .collection("new_x")
        .doc("MoE9XAnCZFjUI5nH5sZj")
        .collection("j")
        .get()
        .then((QuerySnapshot productsnapshot) {
      productsnapshot.docs.forEach((element) {
        dofa.insert(0, Company(h: element.get("h"), riya: element.get("riya")));
      });
    });
    print("dofa bhai new ");

    print(dofa.length);
  }

  Future<void> FetchProducts() async {
    products = [];

    await FirebaseFirestore.instance
        .collection("new_x")
        .get()
        .then((QuerySnapshot productsnapshot) {
      productsnapshot.docs.forEach((element) {
        products.insert(
            0,
            Product(
              id: element.get('id'),
              name: element.get('name'),
            ));
      });
    });

    print("dofa bhai");

    print(products.length);
  }

  Product findByID(String id) {
    return products.firstWhere((element) => element.id == id);
  }

  List<Company> givedata() {
    print(dofa.length);
    return dofa;
  }

  List<Product> get ProductList {
    print("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
    print(products.length);
    return products;
  }
}






  // findById(String id) {
  //   // List jk = 
  //   return dofa.firstWhere((element) => element.h.toLowerCase().contains(id.toLowerCase()));
  //   // return jk;
  // }
