
import 'package:flutter/material.dart';

import 'Tabs/Calls.dart';
import 'Tabs/Status.dart';
import 'Tabs/chat.dart';

class Tabs extends StatefulWidget {
  const Tabs({key}) : super(key: key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  // void initState() {
  //   _tabController = TabController(length: 4, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey,
          title: Text('Whatsapp'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
            SizedBox(width: 15),
            Icon(Icons.filter_list),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueGrey,
              height: 40,
              width: double.infinity,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(50),
              // ),
              child: TabBar(
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     color: Colors.red,),
                unselectedLabelColor: Colors.white,
                labelColor: Colors.teal[900],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.teal[900],
                tabs: const [
                  Tab(child: Icon(Icons.camera_alt_rounded)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Camera Coming Soon')),
                  Chat(),
                  Status(),
                  Calls(),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
