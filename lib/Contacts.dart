import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Icon(Icons.filter_list),
      // Actions(child: Icon(Icons.filter_list),),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.list)),
        ],
        leading: BackButton(
          onPressed: () {},
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select contact'),
            Text(
              'number of contacts',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            SizedBox(height: 12),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.group),
              ),
              title: Text("New group"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.person_add),
              ),
              title: Text("New contact"),
              trailing: Icon(Icons.qr_code_scanner_rounded),
            ),
            SizedBox(height: 10),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey, child: Icon(Icons.person)),
                title: Text("contact 1")),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey, child: Icon(Icons.person)),
                title: Text("contact 2")),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey, child: Icon(Icons.person)),
                title: Text("contact 3")),
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey, child: Icon(Icons.person)),
                title: Text("And So On")),
          ],
        ),
      ),
    );
  }
}
