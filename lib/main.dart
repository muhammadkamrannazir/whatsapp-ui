// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names
import 'package:flash_chat/Tabs/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Contacts.dart';
import 'Tabs.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        primaryColorLight: Colors.tealAccent,
        primaryColorDark: Colors.blueGrey,
        selectedRowColor: Colors.teal,
        unselectedWidgetColor: Colors.white60,
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
        )
      ),
      home: Tabs(),
    );
  }
}
