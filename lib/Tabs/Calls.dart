import 'package:flash_chat/Tabs/chat.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  Calls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_ic_call),
      ),
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (context, int index) {
            return ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('${entries[index]}'),
              subtitle: Row(children: [
                Icon(Icons.call_missed_outgoing ),
                SizedBox(width: 5,),
                Text('${numberofCalls[index]}'),
                SizedBox(width: 5,),
                Text('Call Time'),
              ],),
              trailing: Icon(Icons.call),
            );
          }),
    );
  }
}
