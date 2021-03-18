import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplychaintracker/models/Userdetailes.dart';
import 'package:supplychaintracker/screens/home/usertile.dart';

class Userlist extends StatefulWidget {
  @override
  _UserlistState createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<List<Userdetailes>>(context);
    return Container(
        child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(users.length, (index) {
              return UserTile(user: users[index]);
            })));
    // return ListView.builder(
    //   itemCount: users.length,
    //   itemBuilder: (context, index) {
    //     return UserTile(user: users[index]);
    //   },
    // );
  }
}

// class Userlist extends StatelessWidget {
//   const Userlist({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final users = Provider.of<List<Userdetailes>>(context);
//     users.forEach.(users){
//       print(users.)
//     }
//   }
// }
