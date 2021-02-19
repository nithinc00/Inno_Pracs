import 'package:flutter/material.dart';
import 'package:supplychaintracker/models/Userdetailes.dart';
import 'package:supplychaintracker/services/database.dart';

class UserTile extends StatelessWidget {
  @override
  final Userdetailes user;
  UserTile({this.user});
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            child: IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {}),
            radius: 25,
            backgroundColor: Colors.black,
          ),
          title: Text(user.pname),
          subtitle: Text('Added on ${user.timestamp} '),
        ),
      ),
    );
  }
}
