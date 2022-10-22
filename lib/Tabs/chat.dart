import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Contacts.dart';

class Chat extends StatelessWidget {
  Chat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Contacts());
        },
        child: Icon(Icons.chat_sharp),
      ),
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('${entries[index]}'),
                subtitle: Text('Last Message'),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 8),
                    Text('Last Scene'),
                    SizedBox(height: 5),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.teal,
                      child: Text('1'),
                    ),
                  ],
                ));
          }),
    );
  }
}

final List<int> numberofCalls = <int>[
  (4),
  3,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
  10,
];
final List<String> entries = <String>[
  'AlphaRanker',
  'Usama Sarwar',
  'Kamran',
  'Haseeb',
  'Usama Sarwar',
  'Abdullah',
  'Areeb',
  'Usama Sarwar',
  'Faheem',
  'AlphaRanker',
  'A',
  'Usama Sarwar',
  'AB',
  'AlphaRanker',
  'Kamran',
  'Usama Sarwar',
  'AlphaRanker',
  'Faheem',
  'Usama Sarwar',
  'AlphaRanker',
];
