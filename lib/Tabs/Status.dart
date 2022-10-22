// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flash_chat/Tabs/chat.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.edit,), backgroundColor: Colors.blueGrey,),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 12, 8, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(
                        Icons.person_outline,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 25),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Status',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text('Tap to add status update'),
                  ],
                )
              ],
            ),
            SizedBox(height: 12),
            Text('Recent updates'),
            SizedBox(height: 12),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.teal,
                    child: CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text('Kamran Nazir'),
                  subtitle: Text('8 minutes ago'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.teal,
                    child: CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text('Usama Sarwar'),
                  subtitle: Text('57 minutes ago'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.teal,
                    child: CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text('Abdullah Naveed'),
                  subtitle: Text('2 hours ago'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
