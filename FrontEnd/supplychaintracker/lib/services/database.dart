import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supplychaintracker/models/Userdetailes.dart';
import 'package:supplychaintracker/screens/home/Userlist.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});
  //collection reference
  final CollectionReference account =
      FirebaseFirestore.instance.collection('accountDetail');

  final CollectionReference product =
      FirebaseFirestore.instance.collection('ProductDetail');

  Future updateUserAccount(String userName, String email) async {
    return await account.doc(uid).set({
      'userName': userName,
      'email': email,
      'userID': uid,
    });
  }

  Future addProduct(
      String pname, String pdesc, String quan, String qual, String role) async {
    return await product.doc().set({
      'ProductName': pname,
      'ProductDesc': pdesc,
      'Quantity': quan,
      'Quality': qual,
      'Role': role,
      'Timestamp': Timestamp.now().toDate(),
      'userID': uid,
    });
  }

  List<Userdetailes> _productlist(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Userdetailes(
          pname: doc.data()['ProductName'] ?? '',
          pdesc: doc.data()['ProductDesc'] ?? '',
          quan: doc.data()['Quantity'] ?? '',
          qual: doc.data()['Quality'] ?? '',
          role: doc.data()['Role'] ?? '',
          timestamp: doc.data()['Timestamp'] ?? '');
    }).toList();
  }

  // Future getProduct() async {
  //   return StreamBuilder(
  //     stream: FirebaseFirestore.instance.collection("ProductDetail").snapshots(),
  //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
  //         if(!snapshot.hasData){
  //           return Center(child: CircularProgressIndicator(),)
  //         }
  //     }
  //   );
  //   // for (int i = 0; i < querySnapshot.docs.length; i++) {
  //   //   var a = querySnapshot.docs[i];
  //   //   print(a.documentID);
  //   // }
  // }

  Stream<List<Userdetailes>> get displayproduct {
    return product.snapshots().map(_productlist);
  }
}
