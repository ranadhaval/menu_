


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class temp
{

  final userref = FirebaseFirestore.instance.collection("users").doc();


// add orders

    Future<Future<DocumentReference<Map<String, dynamic>>>> add(String id,String product_name,int total,String quantity) async {
    var reference2 = FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection("all_orders");
    print(userref.id);
    return reference2.add({'total_amount': "$total ₹", "product name": product_name,"quantity":"$quantity"});
  }



// delete orders

    Future<void> delete(id, id2) {
    return FirebaseFirestore.instance
        .collection('new_users')
        .doc(id)
        .collection('address')
        .doc(id2)
        .delete()
        .catchError((e) {
      print(e);
      print("data is as ");
      print(id);
      print(id2);
    });
  }


// update orders

    Future<void> update(id, id2) {
    return FirebaseFirestore.instance
        .collection('new_users')
        .doc(id)
        .collection('address')
        .doc(id2)
        .update({'name': 'bilionair_dhaval', 'position': 'ownwer'}).catchError(
            (e) {
      print(e);
      print("data is as ");
      print(id);
      print(id2);
    });
  }



  
}