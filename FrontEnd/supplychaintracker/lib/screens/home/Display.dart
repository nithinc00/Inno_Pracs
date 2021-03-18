// import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:supplychaintracker/models/Userdetailes.dart';
// import 'package:supplychaintracker/services/auth.dart';

import 'package:supplychaintracker/screens/home/Scanner.dart';

class Display extends StatelessWidget {
  // final AuthService _auth = AuthService();
  final Userdetailes user;
  Display({this.user});
  @override
  Widget build(BuildContext context) {
    print('abcd ${user.imgurl}');

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          'Product Detail',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: "Pompiere", fontSize: 40),
        ),
        backgroundColor: Colors.lightGreen,
        elevation: 0.2,
      ),
      body: Container(
        height: 650,
        width: 500,
        child: Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Container(
                // width: 100,
                // height: 100,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                      // fit: BoxFit.fill,
                      width: 200.0,
                      height: 200.0,
                      image: user.imgurl != ''
                          ? NetworkImage(
                              '${user.imgurl}',
                            )
                          : NetworkImage(
                              'https://cdn.dribbble.com/users/2066835/screenshots/11186147/media/616bc1e9a6ff48544b2342e5a6b85d01.jpg?compress=1&resize=400x300')),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Product Name: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.amberAccent),
                    ),
                    Text(
                      "      " + user.pname,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontSize: 25.0,
                          color: Colors.teal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Seller Name: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.amberAccent),
                    ),
                    Text(
                      "         " + user.buyerName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontSize: 25.0,
                          color: Colors.teal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Quantity: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.amberAccent),
                    ),
                    Text(
                      "             " + user.quan + " " + user.quant,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontSize: 25.0,
                          color: Colors.teal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Quality: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.amberAccent),
                    ),
                    Text(
                      "               " + user.qual,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontSize: 25.0,
                          color: Colors.teal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Phone Number: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.amberAccent),
                    ),
                    Text(
                      user.buyerPhone != ''
                          ? "     " + user.buyerPhone
                          : "     " + "Unavailble",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontSize: 25.0,
                          color: Colors.teal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Description: ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Pompiere",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.amberAccent),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      width: 350,
                      child: Text(
                        "      " + user.pdesc,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Pompiere",
                            fontSize: 25.0,
                            color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.orange,
                icon: Icon(Icons.qr_code),
                label: Text(
                  'Scan QR',
                  style: TextStyle(
                      fontFamily: "Pompiere",
                      fontSize: 25.0,
                      color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scan(detail: user)));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
